#!/usr/bin/env bash

github-deploy-key() {
  cd ~/.ssh/github
  ssh-keygen -t ed25519 -C "lex@borisoff.dev"
}
