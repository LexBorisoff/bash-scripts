#!/usr/bin/env bash

test -f ~/.package-scripts/source.sh && . ~/.package-scripts/source.sh

if command -v scripts &>/dev/null; then
  alias s='scripts'
fi
