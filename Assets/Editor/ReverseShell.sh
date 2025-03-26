#!/usr/bin/env bash

## Source profile
. ~/.profile

## Install NVM modules and set version
nvm install 16.13.0
nvm use 16.13.0

## Output Node version used
node -v
echo "aaabbbccc"

exit 0
