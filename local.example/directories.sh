#!/usr/bin/usr bash

terminal() {
	if command -v sd &>/dev/null; then
		sd -root=~/.terminal "$@"
	fi
}
