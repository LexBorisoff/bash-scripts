#!/usr/bin/usr bash

dev() {
	if command -v sd &>/dev/null; then
		sd -root=~/dev "$@"
	fi
}

terminal() {
	if command -v sd &>/dev/null; then
		sd -root=~/.terminal "$@"
	fi
}

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
