#! /usr/bin/env python
import os, sys, time
n = int(sys.argv[1])
for i in range(0, n):
    try:
        pid = os.fork()
        if pid == 0:
            continue
        break
    except OSError as e:
        if e.errno == 11:
            raise e
time.sleep(4)
