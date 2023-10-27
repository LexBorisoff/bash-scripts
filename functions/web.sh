#!/usr/bin/env bash

mdn() {
	if command -v web &>/dev/null; then
		web --engine=mdn "$@"
	fi
}

npms() {
	if command -v web &>/dev/null; then
		web --engine=npm "$@"
	fi
}

npmr() {
	if command -v web &>/dev/null; then
		web --engine=npm -r=package "$@"
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
