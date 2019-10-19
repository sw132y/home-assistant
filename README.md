# home-assistant

## GIT & SSH configuration
How to integrate github with hassio you can find in [documentation](https://www.home-assistant.io/docs/ecosystem/backup/backup_github/)

Docker container does not keep user data after restart so you need to put SSH key into `/config` folder.

Upload your id_rsa SSH private key to `/config/.ssh/id_rsa`.

**_Important!_ Before your first push make sure that .ssh/ folder and secrets.yaml is on .gitignored list!**

If you want to run gitupdate.sh script manually, run command `sh gitupdate.sh` which:
1. check if hassio configuration is valid
2. add all unstages changes to commit
3. commit to local repository
4. push to remote repository

If you need to invoke any operation on remote server you need to specify where ssh-agent can find your private key.

Examples:
```
ssh-agent bash -c 'ssh-add /config/.ssh/id_rsa; git pull --rebase'
ssh-agent bash -c 'ssh-add /config/.ssh/id_rsa; git push origin HEAD'
```

## Trigger shell command for a daily backup
```
#configuration.yaml
shell_command:
    backup: sh /config/gitupdate.sh
```

```
#automations.yaml
- id: 'backup_to_git'
  alias: 'Send backup to github'
  trigger:
    - platform: time_pattern
      hours: "23"
  action:
    - service: shell_command.backup
```
