alias git='hub'
alias st='git status -sb; echo ''' # upgrade your git if -sb breaks for you. it's fun.
alias branch='git checkout -b'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias dlog='glog master..HEAD'

# Removes all branches that aren't master or that aren't fully merged
alias clb='git branch | grep -ve " master$" | xargs git branch -d'

alias diff='git diff --color'
alias staged='diff --cached'

alias gpromote='git-promote'
alias gpr='git-pr'
alias reup='git-reup'

alias fetchbase='git fetch && git rebase origin/master'
