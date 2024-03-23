#!/usr/bin/env bash

mkcd() {
	if test -d $1; then
		echo '"'$1'"' already exists
	else
		mkdir $1
	fi

	cd ./$1
}
