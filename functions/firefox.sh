#!/usr/bin/usr bash

ff() {
	if command -v web &>/dev/null; then
		web --browser=firefox "$@"
	fi
}
