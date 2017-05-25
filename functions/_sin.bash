#!/bin/bash
#
# NAME
#   _sin(3)
#
# SYNOPSIS
#   _sin [query]
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
#   c(3), v(3), wk(3), fzf(1)
#
# AUTHOR
#   Michael Kelly (michaelkelly322@gmail.com)
#     Github:  thebadmonkeydev
#     Website: https://thebadmonkeydev.github.io
#

if [ -z "$PROJECTS" ];then
  # default PROJECTS dir to HOME/projects
  export PROJECTS=~/projects
fi

_sin() {
  pushq $PROJECTS
    export SELECTED_PROJECT=$(find -L */ -maxdepth 1 -type d | fzf-tmux -d 15 -q "$1")
  popq
}
