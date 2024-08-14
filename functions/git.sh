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

__git_complete gch _git_checkout
