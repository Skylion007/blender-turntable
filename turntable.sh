!/usr/bin/env bash

if [[ ! -z $2 ]]; then
    output="--turntable-output $2"
fi

if [[ ! -z $3 ]]; then
    steps="--turntable-steps $3"
fi
input_file=$1
shift
shift
shift
blender turntable.blend --window-geometry 0 0 1 1 --python turntable.py -- --turntable-model ${input_file} ${output} ${steps} $@
