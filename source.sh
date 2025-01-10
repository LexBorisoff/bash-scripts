#!/usr/bin/env bash

__source-custom-bash-scripts() {
	local current_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"
	local scripts_dir="$current_dir/bash/scripts"
	local local_dir="$current_dir/bash/local"

	if test -d "$scripts_dir"; then
		for file in "$scripts_dir"/*.sh; do
			if test -f "$file"; then
				. "$file"
			fi
		done
	fi

	if test -d "$local_dir"; then
		for file in "$local_dir"/*.sh; do
			if test -f "$file"; then
				. "$file"
			fi
		done
	fi
}

__source-custom-bash-scripts
