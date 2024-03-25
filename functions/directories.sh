#!/usr/bin/env bash

desktop() {
	if command -v sd &>/dev/null; then
		sd -root=~/Desktop
	fi
}

desk() {
	if command -v sd &>/dev/null; then
		desktop
	fi
}

docs() {
	if command -v sd &>/dev/null; then
		sd -root=~/Documents
	fi
}

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
