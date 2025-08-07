#!/usr/bin/env bash

__scripts-source() {
	local current_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"
	local pre_dir="$current_dir/pre"
	local scripts_dir="$current_dir/scripts"
	local local_dir="$current_dir/local"

	if test -d "$pre_dir"; then
		for file in "$pre_dir"/*.sh; do
			if test -f "$file"; then
				. "$file"
			fi
		done
	fi

	# Read ignore list into array, if file exists
	local ignore_file="$current_dir/.ignore"
	local -a ignored_files=()
	if test -f "$ignore_file"; then
		mapfile -t ignored_files < <(tr -d '\r' <"$ignore_file")
	fi

	if test -d "$scripts_dir"; then
		for file in "$scripts_dir"/*.sh; do
			if test -f "$file"; then
				local filename="$(basename "$file")"

				# Check if the file is in the ignore list
				local skip=false
				for ignore in "${ignored_files[@]}"; do
					if [[ "$filename" == "$ignore" ]]; then
						skip=true
						break
					fi
				done

				if ! $skip; then
					. "$file"
				fi
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
__scripts-source

# utility functions
__scripts-sd() {
	if command -v sd &>/dev/null; then
		local current_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"
		sd -r $current_dir "$@"
	fi
}

__scripts-open() {
	local current_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"
	code $current_dir
}
