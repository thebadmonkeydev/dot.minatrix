alias amux='tmux a -t'
alias kmux='tmux kill-session -t'
alias lst='tmux ls'

complete -F _tmux amux
complete -F _tmux kmux
