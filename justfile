install:
    git clone --depth 1 --single-branch https://github.com/floooh/sokol

deps:
    git submodule init
    git submodule update

assets:
    python3 tools/bdf_to_atlas.py \
        spleen/spleen-8x16.bdf \
        assets/spleen-8x16.r8

run:
    blub main.blub && ./main

