#!/usr/bin/env bash

__shell-scripts() {
	local current_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"
	local bash_dir="$(dirname "$(dirname "$current_dir")")"

	if command -v sd &>/dev/null; then
		sd -root=$bash_dir "$@"
	fi
}

__open-shell-scripts() {
	local current_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"
	local bash_dir="$(dirname "$(dirname "$current_dir")")"

	code $bash_dir
}
