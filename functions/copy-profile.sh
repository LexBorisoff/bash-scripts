#!/usr/bin/env bash

profile_dir=/etc/profile.d/
terminal_dir=~/.terminal/git-bash/profile
inputrc=~/.inputrc

copy-profile() {
	if test -d $terminal_dir; then
		cp $profile_dir/git-prompt.sh $profile_dir/aliases.sh $terminal_dir

		if test -f $inputrc; then
			cp $inputrc $terminal_dir
		fi
	else
		echo '"'$terminal_dir'"' does not exist
	fi
}
