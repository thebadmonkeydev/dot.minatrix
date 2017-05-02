# expand aliases for use in non-interactive shell commands
shopt -s expand_aliases

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

# Navigation aliases (should probably set this up with c from _functions)
alias gems='cd ~/gems'
alias sites='cd ~/sites'
alias exp='cd ~/experiments'
alias scripts='cd ~/scripts'

# shortcut for opening a file in default app from commandline
alias open='xdg-open'

# easy clipboard copy on commandline
alias copy='xclip -sel clip'
alias pbcopy='xclip -sel clip'

# outputs  the netstat of a process using a specified port
alias procport='netstat -tulpn | grep'
