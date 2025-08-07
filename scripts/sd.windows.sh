#!/usr/bin/env bash

if command -v sd &>/dev/null; then
  alias appdata='sd -r ~/AppData'
  alias desktop='sd -r ~/Desktop'
  alias desk='desktop'
  alias documents='sd -r ~/Documents'
  alias docs='documents'
  alias pf='sd -r "/c/Program Files"'
  alias pfx='sd -r "/c/Program Files (x86)"'
fi