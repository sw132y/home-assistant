#!/bin/bash

#hassio homeassistant check

echo "$USER"
echo whoami

git status
git pull
git add --all
git commit -m "Daily backup"
git push -u origin master

exit