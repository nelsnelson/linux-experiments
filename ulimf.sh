#! /usr/bin/env bash
if [ ! -z ${1} ]; then
    ulimit -Sn $1
    ulimit -Hn $1
fi
ulimit -n
PATH=$PATH:.
echo `$2 $1`

