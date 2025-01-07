#!/usr/bin/env bash

__scripts() {
	local script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"
	local parent_dir="$(dirname "$script_dir")"

	if command -v sd &>/dev/null; then
		sd -root=$parent_dir "$@"
	fi
}

__open_scripts() {
	local script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"
	local parent_dir="$(dirname "$script_dir")"

	code $parent_dir
}
