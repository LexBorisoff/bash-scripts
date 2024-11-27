#!/usr/bin/env bash

# git commit
gc() {
	if command -v git &>/dev/null; then
		local message="$*"
		git commit -m "$message"
	fi
}

# git switch
gs() {
	git switch "$@"
}

if command -v __git_complete &>/dev/null; then
	__git_complete gs _git_checkout
fi

# show/filter branches
gb() {
	if ! test -z "$1"; then
		git branch -vv --color='always' | grep "$1" --color='always'
	else
		git branch -vv
	fi
}

# show/filter logs
gl() {
	if ! test -z "$1"; then
		git log --grep "$1"
	else
		git log
	fi
}
