#!/usr/bin/env bash

alias vol='volume'

volume() {
  local current_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"
  pwsh "$current_dir/windows.volume.ps1" "$@"
}
