#! /usr/bin/env bash
if [ ! -z ${1} ]; then
    ulimit -Su $1
    ulimit -Hu $1
fi
python=`which python`
$python $2 $1
