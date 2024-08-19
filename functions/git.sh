#!/usr/bin/env bash

gc() {
	if command -v git &>/dev/null; then
		local message="$*"
		git commit -m "$message"
	fi
}

gs() {
	git switch "$@"
}

if command -v __git_complete &>/dev/null; then
	__git_complete gs _git_checkout
fi
