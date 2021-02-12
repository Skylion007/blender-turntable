!/usr/bin/env bash

if [[ ! -z $2 ]]; then
    output="--turntable-output $2"
fi

if [[ ! -z $3 ]]; then
    steps="--turntable-steps $3"
fi
shift
shift
shift
echo $@
blender turntable.blend --window-geometry 0 0 1 1 --python turntable.py -- --turntable-model $1 ${output} ${steps} $@
