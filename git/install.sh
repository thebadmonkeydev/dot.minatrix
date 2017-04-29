#!/usr/bin/env bash
#
# setup global git settings after install
source script/helpers.sh

if ! [ -f git/gitconfig.local.symlink ]
then
  info 'setup gitconfig'

  user ' - What is your github author name?'
  read -e git_authorname </dev/tty
  user ' - What is your github author email?'
  read -e git_authoremail </dev/tty

  sed -e "s/AUTHORNAME/$git_authorname/g" -e "s/AUTHOREMAIL/$git_authoremail/g" git/gitconfig.local.symlink.example > git/gitconfig.local.symlink

  success 'gitconfig'
fi
