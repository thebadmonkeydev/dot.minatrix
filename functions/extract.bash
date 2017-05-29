#!/bin/bash
#
# Usage: extract <file>
# Description: extracts archived files / mounts disk images
#

function extract () {
  if [ -f $1 ]; then
    case $1 in
      *.tar.bz2|*.tbz2)  tar -jxvf $1  ;;
      *.tar.gz|*.tgz)    tar -zxvf $1  ;;
      *.bz2)             bunzip2 $1    ;;
      *.gz)              gunzip $1     ;;
      *.tar)             tar -xvf $1   ;;
      *.zip|*.ZIP|*.war) unzip $1      ;;
      *.rar)             unrar x $1    ;;
      *.Z)               uncompress $1 ;;
      *.7z)              7z x $1       ;;
      *) die "'$1' cannot be extracted/mounted via extract" ;;
    esac
  else
    die "'$1' is not a valid file"
  fi
}
