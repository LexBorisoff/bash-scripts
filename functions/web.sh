#!/usr/bin/env bash

www() {
	if command -v web &>/dev/null; then
		web "$@"
	fi
}

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
		web --engine=npm -r "$@"
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

gpt() {
	if command -v web &>/dev/null; then
		web --engine=chatgpt "$@"
	fi
}

claude() {
	if command -v web &>/dev/null; then
		web --engine=claude "$@"
	fi
}
