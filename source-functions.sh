#!/usr/bin/env bash

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"
functions_dir="$script_dir/functions"

if [ ! -d "$functions_dir" ]; then
	exit 1
fi

for file in "$functions_dir"/*.sh; do
	if [ -f "$file" ]; then
		source "$file"
	fi
done
