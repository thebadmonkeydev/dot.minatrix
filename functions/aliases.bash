# expand aliases for use in non-interactive shell commands
shopt -s expand_aliases

alias w='workon'
alias p='c ~/projects 2'
alias doing='read_todos'

complete -F _tmux w
