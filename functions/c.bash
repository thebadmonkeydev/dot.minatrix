#!/bin/bash
#
# c()
#
# Interactively fuzzy search for project folders under $PROJECTS


c() {
  _sin

  if [ ! -z "$SELECTED_PROJECT" ];then
    echo "Entering project ($SELECTED_PROJECT)"
    cd $PROJECTS/$SELECTED_PROJECT
  fi
}
