#!/usr/bin/env bash

__source_functions() {
	local script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"
	local functions_dir="$script_dir/functions"
	local local_dir="$script_dir/local"

	if [ -d "$functions_dir" ]; then
		for file in "$functions_dir"/*.sh; do
			if [ -f "$file" ]; then
				source "$file"
			fi
		done
	fi

	if [ -d "$local_dir" ]; then
		for file in "$local_dir"/*.sh; do
			if [ -f "$file" ]; then
				source "$file"
			fi
		done
	fi
}

__source_functions
