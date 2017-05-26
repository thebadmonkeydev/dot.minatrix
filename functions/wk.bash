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
  c "$@"

  if [ ! -z "$SELECTED_PROJECT" ];then
    if [ ! -z "$TMUX" ];then
      failure 'detach from tmux first'
      return
    fi

    sessionname=$(echo $SELECTED_PROJECT | tr '.' '-')
    echo "Starting work on ($SELECTED_PROJECT)"

    if [ -z "$(tmux ls | grep $sessionname)" ];then
      tmux new-session -s "$sessionname" "vim; exec bash"
    else
      tmux attach -t "$sessionname"
    fi
  fi
}
