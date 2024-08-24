#!/usr/bin/env bash

get-alias() {
	if [ $# -gt 0 ]; then
		alias | grep $1
	else
		alias
	fi
}

alias ll='ls -lA'
