#!/bin/bash
ssh-keyscan -H github.com >> /config/.ssh/known_hosts

ssh-add /config/.ssh/id_rsa;

git status
git add --all
git commit -m "Auto commit before pulling changes"
git pull --rebase

exit 0