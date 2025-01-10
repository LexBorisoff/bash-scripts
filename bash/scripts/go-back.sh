#!/usr/bin/env bash

back() {
	local num=$1

	if test -z "$num"; then
		num=1
	fi

	for ((i = 0; i < num; i++)); do
		cd ..
	done
}
