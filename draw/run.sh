#!/usr/bin/env bash
set -euo pipefail
docker build -t keymap ./draw
docker run --rm --name keymap -v $(pwd):/app keymap keymap -c "./draw/config.yaml" parse -z "./config/corne.keymap"
# docker run --rm --name keymap -v $(pwd):/app keymap keymap -c "draw/config.yaml" parse -z "config/corne.keymap"
# keymap -c "./config.yaml" parse -z "{{ config }}/base.keymap" >"{{ draw }}/base.yaml"
# keymap -c "./config.yaml" draw "{{ draw }}/base.yaml" -k "ferris/sweep" >"{{ draw }}/base.svg"
