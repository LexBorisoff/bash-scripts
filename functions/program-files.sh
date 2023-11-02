#!/usr/bin/env bash

function pf() {
	if command -v sd &>/dev/null; then
		sd -root=/c/Program\ Files "$@"
	fi
}

function pfx() {
	if command -v sd &>/dev/null; then
		sd -root=/c/Program\ Files\ \(x86\) "$@"
	fi
}
