#!/usr/bin/env bash

function www() {
	if command -v web &>/dev/null; then
		web "$@"
	fi
}

function mdn() {
	if command -v web &>/dev/null; then
		web --engine=mdn "$@"
	fi
}

function npms() {
	if command -v web &>/dev/null; then
		web --engine=npm "$@"
	fi
}

function npmr() {
	if command -v web &>/dev/null; then
		web --engine=npm -r "$@"
	fi
}

function ff() {
	if command -v web &>/dev/null; then
		web --browser=firefox "$@"
	fi
}

function yt() {
	if command -v web &>/dev/null; then
		web --engine=youtube "$@"
	fi
}

function gpt() {
	if command -v web &>/dev/null; then
		web --engine=chatgpt "$@"
	fi
}
