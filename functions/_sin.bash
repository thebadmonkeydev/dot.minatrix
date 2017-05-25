#!/bin/bash
#
# _sin()
#
# _sin is a helper used to fuzzy select directories from the $PROJECTS
# directory.  The default value for $PROJECTS is `~/projects`. You can
# override this location by placing the following before `source ~/.bashrc.common`:
#
#   export PROJECTS=~/my-project-dir
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
