#!/usr/bin/env bash

alias profile-source='source ~/.bashrc'

profile-copy() {
	local profile_dir=/etc/profile.d/
	local terminal_dir=~/.terminal/git-bash/profile
	local bashrc=~/.bashrc
	local inputrc=~/.inputrc

	if test -d $terminal_dir; then
		cp $profile_dir/git-prompt.sh $profile_dir/aliases.sh $terminal_dir

		if test -f $inputrc; then
			cp $inputrc $terminal_dir
		fi

		if test -f $bashrc; then
			cp $bashrc $terminal_dir
		fi
	else
		echo '"'$terminal_dir'"' does not exist
	fi
}
