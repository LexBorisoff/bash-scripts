#!/usr/bin/env bash

if command -v sd &>/dev/null; then
  alias dev='sd -r ~/dev'
  alias j='sd -p projects'
  alias p='sd -p practice'
  alias ji='j -i'
  alias pi='p -i'
fi