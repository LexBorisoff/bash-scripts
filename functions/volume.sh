#!/usr/bin/env bash

alias vol='volume'

volume() {
  local script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"
  local parent_dir="$(dirname "$script_dir")"
  powershell "$parent_dir/powershell/volume.ps1" "$@"
}
