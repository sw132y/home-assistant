#!/bin/bash

hassio homeassistant check

chmod 400 /config/.ssh/id_rsa 

ssh-keyscan -H github.com >> ~/.ssh/known_hosts

git status
git fetch
git add --all
git commit -m "Daily backup"
ssh-agent bash -c 'ssh-add /config/.ssh/id_rsa; git push origin HEAD'

exit 0