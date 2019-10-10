# home-assistant

## GIT & SSH configuration
Docker container does not keep user data after restart so you need to put SSH key into `/config` folder.

Upload your id_rsa SSH private key to `/config/.ssh/id_rsa`.

If you want to run gitupdate.sh script manually, run command `sh gitupdate.sh`

If you need to invoke any operation on remote server you need to specify where ssh-agent can find your private key.

Examples:
```
ssh-agent bash -c 'ssh-add /config/.ssh/id_rsa; git pull --rebase'
ssh-agent bash -c 'ssh-add /config/.ssh/id_rsa; git push origin HEAD'
```