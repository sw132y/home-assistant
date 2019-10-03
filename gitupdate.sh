#!/bin/bash

cd /config

hass --script check_config

git pull
git add .
git status
git commit -m "Daily backup"
git push origin master

exit