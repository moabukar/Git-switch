#!/bin/bash
gitaccounts="moabukar"
# first
declare -A github
github[mohamed.abukar]='moabukar'


# git config function
function gitconfig_switch() {
        REMOTE=$1
        GIT_URL=$2
        USER=$3
        sed -i -e 's/"name = moabukar"/test/g' ~/.gitconfig
        #sed -r -i "/remote \"$REMOTE\"/,+2s/(.*)+@$GIT_URL/\turl = https:\/\/$USER@$GIT_URL/" ~/.gitconfig
        #sed -i -e 's'
}

select USER in $gitaccounts; do
        gitconfig_switch origin $REPO $USER

        GITHUB_USER=${github[$USER]}
        if [ ! -z "$GITHUB_USER" ]; then
                gitconfig_switch github github.com $GITHUB_USER

        fi;
    
    break

done
