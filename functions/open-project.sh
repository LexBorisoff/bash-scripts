#!/usr/bin/env bash

op() {
	local go=false

	if [[ "$1" == "-cd" ]]; then
		go=true
		shift
	fi

	if command -v sd &>/dev/null; then
		local current_dir=$(pwd)

		"$@"
		code .

		if [ "$go" = false ]; then
			cd "$current_dir"
		fi

	fi
}
