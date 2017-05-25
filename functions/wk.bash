#!/bin/bash
#
# wk()
#
# wk is a tool to quickly navigate a developer's project
# folder.
#
# change dir with interactive completion in $PROJECTS and start
# a new tmux session with vim in the project's root.

work() {
  _sin

  if [ ! -z "$SELECTED_PROJECT" ];then
    echo "Starting work on ($SELECTED_PROJECT)"
    tmux new-session -s "$(echo $SELECTED_PROJECT | tr '.' '-')" "vim $PROJECTS/$SELECTED_PROJECT"
  fi
}
