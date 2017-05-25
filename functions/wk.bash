#!/bin/bash
#
# wk()
#
# wk is a tool to quickly navigate a developer's project
# folder.
#
# change dir with interactive completion in $PROJECTS and start
# a new tmux session with vim in the project's root.

wk() {
  c

  if [ ! -z "$SELECTED_PROJECT" ];then
    echo "Starting work on ($SELECTED_PROJECT)"

    sessionname=$(echo $SELECTED_PROJECT | tr '.' '-')
    tmux new-session -s "$sessionname" "vim $PROJECTS/$SELECTED_PROJECT; exec bash"
  fi
}
