#!/usr/bin/env bash

mdn() {
	if command -v web &>/dev/null; then
		web --engine=mdn "$@"
	fi
}

npmjs() {
	if command -v web &>/dev/null; then
		web --engine=npm "$@"
	fi
}

github() {
	if command -v web &>/dev/null; then
		web --engine=github "$@"
	fi
}

ff() {
	if command -v web &>/dev/null; then
		web --browser=firefox "$@"
	fi
}

yt() {
	if command -v web &>/dev/null; then
		web --engine=youtube "$@"
	fi
}
