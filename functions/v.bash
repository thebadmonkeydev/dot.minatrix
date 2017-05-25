#!/bin/bash
#
# v()
#
# Interactively fuzzy search for project folders under $PROJECTS
# and opens the project root in $EDITOR

v() {
  _sin

  if [ ! -z "$SELECTED_PROJECT" ];then
    echo "Opening project ($SELECTED_PROJECT)"
    vim $PROJECTS/$SELECTED_PROJECT
  fi
}
