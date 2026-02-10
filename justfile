shaders:
    #!/usr/bin/env sh
    for file in shaders/*.glsl; do
        [ -f "$file" ] || break
        sokol-shdc --input "$file" --output "${file}.h" --slang glsl410
    done
    
build:
    blub main.blub

run:
    blub main.blub && ./main

install:
    git clone --depth 1 --single-branch https://github.com/floooh/sokol
