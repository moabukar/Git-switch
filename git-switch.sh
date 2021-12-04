#!/bin/bash
gitaccounts="moabukar"
# first
declare -A github
github[moabukar]='personal'


# git config function
function gitconfig_switch() {
        REMOTE=$1
        GIT_URL=$2
        USER=$3
        sed -r -i "/remote \"$REMOTE\"/,+2s/(.*)+@$GIT_URL/\turl = https:\/\/$USER@$GIT_URL/" .git/config
}

select USER IN $gitaccounts; do
        gitconfig_switch origin $REPO $USER

        GITHUB_USER=${github[$USER]}
        if [ ! -z "$GITHUB_USER" ]; then
                gitconfig_switch github github.com $GITHUB_USER

        fi;
    
    break

done
