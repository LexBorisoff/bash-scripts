#!/usr/bin/env bash

alias prune='git remote prune origin'

# git commit
gc() {
	if command -v git &>/dev/null; then
		local message="$*"
		git commit -m "$message"
	fi
}

alias gs="git switch"

if command -v __git_complete &>/dev/null; then
	__git_complete gs _git_checkout
fi

# show/filter branches
gb() {
	if ! test -z "$1"; then
		git branch | grep "$1" --color='always'
	else
		git branch
	fi
}

# show/filter branches upstream
gbv() {
	if ! test -z "$1"; then
		git branch -vv --color='always' | grep "$1" --color='always'
	else
		git branch -vv
	fi
}

# switch to the matched branch (gb + gs)
gbs() {
	sed_arg='s/\x1B\[[0-9;]*[a-zA-Z]//g'

	if ! test -z "$1"; then
		branch=$(git branch | grep "$1" | sed "$sed_arg" | awk '{print $1}' | head -n 1)

		if ! test -z "$branch"; then
			git switch "$branch"
		else
			echo "No matching branch found."
		fi
	else
		last_gb_command=$(history | tail -n 10 | grep -E '^[ ]*[0-9]+[ ]+gb[ ]+[^ ]+' | tail -n 1 | awk '{$1=""; print substr($0,2)}')

		if [[ "$last_gb_command" =~ ^gb[[:space:]]+(.+) ]]; then
			search_term=${BASH_REMATCH[1]}

			# Re-run the logic for the captured branch
			branch=$(git branch | grep "$search_term" | sed "$sed_arg" | awk '{print $1}' | head -n 1)

			if ! test -z "$branch"; then
				git switch "$branch"
			else
				echo "No matching branch found for '$search_term'."
			fi
		fi
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

stash() {
	local message="$*"
	git stash push -u -m "$message"
}
