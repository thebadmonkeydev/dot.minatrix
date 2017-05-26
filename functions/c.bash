#!/bin/bash
#
# c()
#
# Interactively fuzzy search to cd into $PROJECTS


c() {
  directory=$(_sin "$@")

  if [ -z "$1" ];then
    root=./
  else
    root=$1
  fi

  if [ ! -z "$directory" ];then
    cd $root/$directory
    echo $directory
  fi
}
