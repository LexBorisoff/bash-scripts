#!/usr/bin/env bash

function gb() {
	local num=$1

	if [ -z "$num" ]; then
		num=1
	fi

	for ((i = 0; i < num; i++)); do
		cd ..
	done
}
