#!/usr/bin/env bash

check-exports() {
	if command -v attw &>/dev/null; then
		attw --pack . --profile=esm-only --no-emoji
	fi
}
