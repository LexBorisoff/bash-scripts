#!/usr/bin/env bash

alias vol='volume'

volume() {
  local current_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"
  local main_dir="$(dirname $(dirname "$current_dir"))"
  pwsh "$main_dir/powershell/volume.ps1" "$@"
}
