#!/usr/bin/env bash

check-exports() {
	cmd='attw --pack . --profile=esm-only --no-emoji'

	if command -v attw &>/dev/null; then
		$cmd
	else
		echo ... globally installing "@arethetypeswrong/cli" package
		npm i -g @arethetypeswrong/cli
		$cmd
	fi
}
