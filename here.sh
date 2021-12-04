#!/bin/bash
developers="mohamedabukar"
declare -A github
github[mohamedabukar]='moabukar'


REPO=git # Put your git repo here.

function update_gitconfig() {
	REMOTE=$1
	GIT_URL=$2
	USER=$3
	sed -r -i "/remote \"$REMOTE\"/,+2s/(.*)+@$GIT_URL/\turl = https:\/\/$USER@$GIT_URL/" ~/.gitconfig
}

select USER in $developers; do
	update_gitconfig origin $REPO $USER

	GITHUB_USER=${github[$USER]}
	if [ ! -z "$GITHUB_USER" ]; then
		update_gitconfig github github.com $GITHUB_USER
	fi;

    break
done