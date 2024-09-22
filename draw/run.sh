#!/usr/bin/env bash
set -euo pipefail
docker build -t keymap ./draw
# docker run --rm --name keymap -v $(pwd)/config:/app/config -v $(pwd)/draw:/app/draw  keymap keymap draw -h
docker run --rm --name keymap -v $(pwd)/config:/app/config -v $(pwd)/draw:/app/draw keymap keymap -c "draw/config.yaml" parse -z "config/corne.keymap"  -o "draw/corne.yaml"
docker run --rm --name keymap -v $(pwd)/draw:/app/draw keymap keymap -c "draw/config.yaml" draw "draw/corne.yaml" -k "crkbd/rev1" -o "draw/corne.svg"