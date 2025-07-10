#!/usr/bin/env bash

github-ssh-key() {
  cd ~/.ssh/github
  ssh-keygen -t ed25519 -C "lex@borisoff.dev"
}
