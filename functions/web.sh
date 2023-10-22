#!/usr/bin/env bash

mdn() {
	if command -v web &>/dev/null; then
		web --mdn "$@"
	fi
}

npms() {
	if command -v web &>/dev/null; then
		web --npm "$@"
	fi
}

npmr() {
	if command -v web &>/dev/null; then
		web --npm -r=package "$@"
	fi
}
