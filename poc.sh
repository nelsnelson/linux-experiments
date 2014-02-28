#! /usr/bin/env bash

# To compile and run as a standard user, not root:
gcc poc.c -o poc

result=`./poc 2>&1`
code=$?
echo "code: ${code}"
echo "result: ${result}"

if [[ "${code}" = "1" ]]; then
    if [[ "${result}" = 'recvmmsg(): Bad address' ]]; then
        echo "Good, not vulnerable"
        exit
    fi
fi
if [[ "${code}" = "127" ]]; then
    if  [[ "${result}" = "Killed" ]]; then
        echo "BAD! vulnerable"
        exit
    fi
fi

