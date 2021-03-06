# expand aliases for use in non-interactive shell commands
shopt -s expand_aliases

alias reload='source ~/.bashrc'

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
  test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
  alias ls='ls -alF --color=auto'
  alias dir='dir --color=auto'
  alias grep='grep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias lss='ls -la | less'

# shortcut for opening a file in default app from commandline
alias open='xdg-open'

# outputs  the netstat of a process using a specified port
alias procport='netstat -tulpn | grep'

# I always try to use `quit` to kill terminal windows
alias quit=exit

alias ls='tree -L 1 --dirsfirst -ph'

alias journal='diary journal'
alias standup='diary standup'

alias pomo='~/dot.minatrix/bin/pomodoro work &'
alias bomo='~/dot.minatrix/bin/pomodoro short &'

alias pql='docker run -e POSTGRES_USER=michael -p 5432:5432 -v /var/lib/postgresql/data:/var/lib/postgresql/data postgres -c log_statement=all'

alias stardew='GOG\ Games/Stardew\ Valley/start.sh'
