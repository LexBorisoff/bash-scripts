#!/usr/bin/env bash

test -f ~/.sd/sd.sh && . ~/.sd/sd.sh

if command -v sd &>/dev/null; then
  sd .
fi
