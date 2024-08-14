#!/usr/bin/env bash

gc() {
	if command -v git &>/dev/null; then
		local message="$*"
		git commit -m "$message"
	fi
}

gch() {
	git checkout "$@"
}

if command -v __git_complete &>/dev/null; then
	__git_complete gch _git_checkout
fi
