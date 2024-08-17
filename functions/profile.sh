#!/usr/bin/env bash

__profile_copy() {
	local profile_dir=/etc/profile.d/
	local script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"
	local parent_dir="$(dirname "$script_dir")"
	local backup_dir=$parent_dir/profile
	local bashrc=~/.bashrc
	local inputrc=~/.inputrc

	if test -d $backup_dir; then
		cp $profile_dir/git-prompt.sh $profile_dir/aliases.sh $backup_dir

		if test -f $inputrc; then
			cp $inputrc $backup_dir
		fi

		if test -f $bashrc; then
			cp $bashrc $backup_dir
		fi
	else
		echo '"'$backup_dir'"' does not exist
	fi
}
