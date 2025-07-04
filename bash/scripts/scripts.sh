#!/usr/bin/env bash

__shell-scripts() {
	local current_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"
	local bash_dir="$(dirname "$(dirname "$current_dir")")"

	if command -v sd &>/dev/null; then
		sd -r $bash_dir "$@"
	fi
}

__open-shell-scripts() {
	local current_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"
	local bash_dir="$(dirname "$(dirname "$current_dir")")"

	code $bash_dir
}

__pull-scripts() {
	local current_dir=$(pwd)

	cd ~/.terminal/shell-scripts
	git pull

	cd $current_dir
}
