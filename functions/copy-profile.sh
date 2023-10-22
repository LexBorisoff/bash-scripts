#!/usr/bin/env bash

profile_dir=/etc/profile.d/
terminal_dir=~/terminal/git-bash/profile

copy-profile() {
	if test -d $terminal_dir; then
		cp $profile_dir/git-prompt.sh $profile_dir/aliases.sh $terminal_dir
	else
		echo '"'$terminal_dir'"' does not exist
	fi
}
