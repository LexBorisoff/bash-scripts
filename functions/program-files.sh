#!/usr/bin/env bash

pf() {
	if command -v sd &>/dev/null; then
		sd -root=/c/Program\ Files "$@"
	fi
}

pfx() {
	if command -v sd &>/dev/null; then
		sd -root=/c/Program\ Files\ \(x86\) "$@"
	fi
}
