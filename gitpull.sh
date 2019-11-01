#!/bin/bash
ssh-keyscan -H github.com >> /config/.ssh/known_hosts

git status
git add --all
git commit -m "Auto commit before pulling changes"

ssh-agent bash -c 'ssh-add /config/.ssh/id_rsa; git pull --rebase'

exit 0