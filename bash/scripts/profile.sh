#!/usr/bin/env bash

__backup-bash-profile() {
	local current_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"
	local backup_dir="$(dirname "$current_dir")/profile"

	local profile_dir="/etc/profile.d/"
	local bashrc="~/.bashrc"
	local inputrc="~/.inputrc"

	if test -d $backup_dir; then
		cp "$profile_dir/git-prompt.sh" "$profile_dir/aliases.sh" "$backup_dir"

		if test -f $inputrc; then
			cp "$inputrc" "$backup_dir"
		fi

		if test -f $bashrc; then
			cp "$bashrc" "$backup_dir"
		fi
	else
		echo '"'$backup_dir'"' does not exist
	fi
}
