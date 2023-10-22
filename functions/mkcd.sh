#!/usr/bin/env bash

function mkcd() {
	if test -d $1; then
		echo '"'$1'"' already exists
	else
		mkdir $1
	fi

	cd ./$1
}
