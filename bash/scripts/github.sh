#!/usr/bin/env bash

github-ssh-key() {
	if ! test -d ~/.ssh/github; then
		mkdir -p ~/.ssh/github
	fi

	cd ~/.ssh/github
	ssh-keygen -t ed25519 -C "lex@borisoff.dev"
}
