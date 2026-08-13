#!/usr/bin/env python3
"""Convert a BDF bitmap font into a single-channel, fixed-cell atlas.

The output is raw row-major R8 data: one byte per pixel, where 0 is
transparent and 255 is an inked font pixel. The accompanying JSON file
contains the dimensions and codepoint range needed by the renderer.

Example:
    python3 tools/bdf_to_atlas.py spleen/spleen-8x16.bdf assets/spleen-8x16.r8
"""

from __future__ import annotations

import argparse
import json
from dataclasses import dataclass
from pathlib import Path


@dataclass
class Glyph:
    codepoint: int
    width: int
    height: int
    x_offset: int
    y_offset: int
    bitmap_rows: list[bytes]


def parse_numbers(line: str, expected: int) -> tuple[int, ...]:
    values = tuple(int(value) for value in line.split()[1:])
    if len(values) != expected:
        raise ValueError(f"Expected {expected} values in: {line}")
    return values


def parse_bdf(path: Path) -> tuple[tuple[int, int, int, int], dict[int, Glyph]]:
    font_box: tuple[int, int, int, int] | None = None
    glyphs: dict[int, Glyph] = {}
    current: dict[str, object] | None = None
    reading_bitmap = False

    for raw_line in path.read_text(encoding="ascii").splitlines():
        line = raw_line.strip()
        if line.startswith("FONTBOUNDINGBOX "):
            font_box = parse_numbers(line, 4)
        elif line.startswith("STARTCHAR "):
            current = {"rows": []}
            reading_bitmap = False
        elif current is not None and line.startswith("ENCODING "):
            current["codepoint"] = parse_numbers(line, 1)[0]
        elif current is not None and line.startswith("BBX "):
            current["box"] = parse_numbers(line, 4)
        elif current is not None and line == "BITMAP":
            reading_bitmap = True
        elif current is not None and line == "ENDCHAR":
            reading_bitmap = False
            if "codepoint" in current and "box" in current:
                width, height, x_offset, y_offset = current["box"]  # type: ignore[misc]
                glyphs[current["codepoint"]] = Glyph(  # type: ignore[index]
                    codepoint=current["codepoint"],  # type: ignore[arg-type]
                    width=width,
                    height=height,
                    x_offset=x_offset,
                    y_offset=y_offset,
                    bitmap_rows=current["rows"],  # type: ignore[arg-type]
                )
            current = None
        elif reading_bitmap:
            current["rows"].append(bytes.fromhex(line))  # type: ignore[index]

    if font_box is None:
        raise ValueError("BDF file does not contain FONTBOUNDINGBOX")
    return font_box, glyphs


def place_glyph(
    atlas: bytearray,
    atlas_width: int,
    cell_x: int,
    cell_y: int,
    font_box: tuple[int, int, int, int],
    glyph: Glyph,
) -> None:
    cell_width, cell_height, font_x_offset, font_y_offset = font_box
    glyph_top = font_y_offset + font_box[1]
    bitmap_top = glyph.y_offset + glyph.height
    destination_x = cell_x + glyph.x_offset - font_x_offset
    destination_y = cell_y + glyph_top - bitmap_top

    for y, packed_row in enumerate(glyph.bitmap_rows):
        for x in range(glyph.width):
            if packed_row[x // 8] & (0x80 >> (x % 8)):
                output_x = destination_x + x
                output_y = destination_y + y
                if 0 <= output_x < cell_x + cell_width and 0 <= output_y < cell_y + cell_height:
                    atlas[output_y * atlas_width + output_x] = 255


def fill_cell(
    atlas: bytearray,
    atlas_width: int,
    cell_x: int,
    cell_y: int,
    cell_width: int,
    cell_height: int,
) -> None:
    for y in range(cell_y, cell_y + cell_height):
        start = y * atlas_width + cell_x
        atlas[start : start + cell_width] = b"\xff" * cell_width


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("input", type=Path, help="input BDF font")
    parser.add_argument("output", type=Path, help="output raw R8 atlas")
    parser.add_argument(
        "--metadata",
        type=Path,
        help="metadata JSON path (defaults to OUTPUT.json)",
    )
    parser.add_argument("--first", type=int, default=0, help="first codepoint")
    parser.add_argument("--last", type=int, default=126, help="last codepoint")
    parser.add_argument("--columns", type=int, default=16, help="atlas cell columns")
    args = parser.parse_args()

    if args.first > args.last or args.columns <= 0:
        parser.error("invalid codepoint range or column count")

    font_box, glyphs = parse_bdf(args.input)
    cell_width, cell_height, _, _ = font_box
    glyph_count = args.last - args.first + 1
    rows = (glyph_count + args.columns - 1) // args.columns
    atlas_width = args.columns * cell_width
    atlas_height = rows * cell_height
    atlas = bytearray(atlas_width * atlas_height)

    for codepoint in range(args.first, args.last + 1):
        index = codepoint - args.first
        cell_x = (index % args.columns) * cell_width
        cell_y = (index // args.columns) * cell_height
        if codepoint == 0:
            fill_cell(atlas, atlas_width, cell_x, cell_y, cell_width, cell_height)
            continue
        glyph = glyphs.get(codepoint)
        if glyph is None:
            continue
        place_glyph(
            atlas,
            atlas_width,
            cell_x,
            cell_y,
            font_box,
            glyph,
        )

    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_bytes(atlas)
    metadata_path = args.metadata or args.output.with_suffix(args.output.suffix + ".json")
    metadata_path.parent.mkdir(parents=True, exist_ok=True)
    metadata_path.write_text(
        json.dumps(
            {
                "format": "R8",
                "atlas_width": atlas_width,
                "atlas_height": atlas_height,
                "glyph_width": cell_width,
                "glyph_height": cell_height,
                "first_codepoint": args.first,
                "last_codepoint": args.last,
                "columns": args.columns,
                "rows": rows,
            },
            indent=2,
        )
        + "\n",
        encoding="utf-8",
    )


if __name__ == "__main__":
    main()
