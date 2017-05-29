# expand aliases for use in non-interactive shell commands
shopt -s expand_aliases

alias w='workon'

complete -F _tmux w
