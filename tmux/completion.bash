#!/bin/bash
#
# _tmux
#

_tmux() {
  opts=$(tmux ls -F "#{session_name}" 2>/dev/null)

  if [ $? -eq 0 ];then
    COMPREPLY=( $(compgen -W "${opts}" -- "${COMP_WORDS[COMP_CWORD]}") )
    return 0
  fi
}

complete -F _tmux tmux
