#!/bin/bash

hassio homeassistant check


chmod 400 /config/.ssh/id_rsa 

git status
git pull
git add --all
git commit -m "Daily backup"
ssh-agent bash -c 'ssh-add /config/.ssh/id_rsa; git push origin HEAD'

exit