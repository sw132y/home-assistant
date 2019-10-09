#!/bin/bash

hassio homeassistant check

git status
git pull
git add --all
git commit -m "Daily backup"
git push -u origin master

exit