#!/bin/bash
#
# _tmux
#

_tmux() {
  opts=$(tmux ls -F "#{session_name}")

  COMPREPLY=( $(compgen -W "${opts}" -- "${COMP_WORDS[COMP_CWORD]}") )
  return 0
}

complete -F _tmux tmux
complete -F _tmux amux
