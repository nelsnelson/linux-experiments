#! /usr/bin/env bash

n=${1:-100};
d=${2:-'/tmp/x/'}

abort() {
    rm -rf $d
    exit
}

trap abort SIGINT
trap abort SIGTSTP

n=$((n+1));
mkdir -p $d; cd $d;
echo "Creating ${n} subdirectories rooted at ${d}...";
for i in $(seq 1 $n); do mkdir -p x; cd x; done
[[ -d /tmp/x/ ]] && rm -rf /tmp/x/ || echo "Don't forget to cleanup ${d}"

