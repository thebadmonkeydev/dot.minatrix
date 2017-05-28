#!/bin/bash
#
# workon()
#
# workon is a tool to quickly navigate a developer's project
# folder.
#
# change dir with interactive completion in $PROJECTS and start
# a new tmux session with vim in the project's root.
#
# TODO
#   - move this to a script in bin/ since it is becoming complex c() and _sin() are the only ones that are required to be functions

if [ -z "$PROJECTS" ];then
  # default PROJECTS dir to HOME/projects
  export PROJECTS=~/projects
fi

workon() {
  if [ ! -z "$TMUX" ];then
    failure 'detach from tmux first'
    return
  fi

  relative=$(_sin $PROJECTS 2)
  sessionname=$(echo $relative | tr '.' '-')

  if [ ! -z "$sessionname" ];then
    echo "Starting work on ($sessionname)"

    if [ -z "$(tmux ls | grep $sessionname)" ];then
      tmux new-session -s "$sessionname" -c "$PROJECTS/$relative" "vim; exec bash"
    else
      tmux attach -t "$sessionname"
    fi
  fi
}
