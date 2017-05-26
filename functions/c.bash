#!/bin/bash
#
# c()
#
# Interactively fuzzy search to cd into $PROJECTS


c() {
  _sin "$@"

  if [ ! -z "$SELECTED_PROJECT" ];then
    echo "Entering project ($SELECTED_PROJECT)"
    cd $PROJECTS/$SELECTED_PROJECT
  fi
}
