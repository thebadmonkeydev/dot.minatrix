#!/bin/bash
#
# NAME
#   _sin(3)
#
# SYNOPSIS
#   _sin [root] [depth]
#
# DESCRIPTION
#   _sin makes navigating your development projects easy as sin!
#   it is a helper used to fuzzy select directories from the $PROJECTS
#   directory.  The default value for $PROJECTS is `~/projects`. You can
#   override this location by placing the following before `source ~/.bashrc.common`
#   in your ~/.bashrc file:
#
#     export PROJECTS=~/my-project-dir
#
#   When the user selects a path, _sin stores the selected path in $SELECTED_PROJECT
#   this value will look like `thebadmonkeydev/dot.minatrix` which is relative to
#   the $PROJECTS directory.
#
# OPTIONS
#   _sin takes no options, but you can provide a query to seed the fuzzy search
#
# RELATED
#   c(3), wk(3), fzf(1)
#
# AUTHOR
#   Michael Kelly (michaelkelly322@gmail.com)
#     Github:  thebadmonkeydev
#     Website: https://thebadmonkeydev.github.io
#

_sin() {
  if [ -z "$2" ];then
    depth=1
  else
    depth=$(($2 - 1))
  fi

  if [ -z "$1" ];then
    directory=./
  else
    directory=$1
  fi

  pushq $directory
    echo $(find -L */ -maxdepth $depth -type d | fzf-tmux -d 15)
  popq
}
