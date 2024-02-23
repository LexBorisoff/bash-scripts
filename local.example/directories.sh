#!/usr/bin/usr bash

function dev() {
	if command -v sd &>/dev/null; then
		sd -root=~/dev "$@"
	fi
}

function terminal() {
	if command -v sd &>/dev/null; then
		sd -root=~/.terminal "$@"
	fi
}

function desktop() {
	if command -v sd &>/dev/null; then
		sd -root=~/Desktop
	fi
}

function desk() {
	if command -v sd &>/dev/null; then
		desktop
	fi
}

function docs() {
	if command -v sd &>/dev/null; then
		sd -root=~/Documents
	fi
}
