#!/usr/bin/env bash

function dh() {
	local clear_screen=0

	while [[ $# -gt 0 ]]; do
		case "$1" in
		-c)
			clear_screen=1
			;;
		esac
		shift
	done

	history -c
	echo "" >~/.bash_history

	if [ $clear_screen -eq 1 ]; then
		clear
	fi
}
