#!/bin/bash

#set +ex
# declare -A github
# github[mohamed.abukar]='moabukar'

function GitSwitchPersonal() {
    git config --global user.name $USERPERSONAL
    git config --global user.email $EMAILPERSONAL
}


function GitSwitchWork() {
    git config --global work.name $USERWORK
    git config --global work.email $EMAILWORK
}

GitSwitchPersonal
GitSwitchWork


# select USER in $gitaccounts; do
#         gitconfig_switch origin $REPO $USER

#         GITHUB_USER=${github[$USER]}
#         if [ ! -z "$GITHUB_USER" ]; then
#                 gitconfig_switch github github.com $GITHUB_USER

#         fi;
    
#     break

# done


#GitSwitchUser
#GitSwitchEmail

