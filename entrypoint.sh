#!/bin/sh -l

set -e

if [ -n "$INPUT_CONFIG" ]; then
    octocov --config "$INPUT_CONFIG"
else
    octocov
fi
