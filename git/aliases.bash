alias git='hub'
alias st='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias branch='git checkout -b'
alias staged='git diff --cached'
alias log="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias dlog='log master..HEAD'

# Removes all branches that aren't master or that aren't fully merged
alias clb='git branch | grep -ve " master$" | xargs git branch -d'

# Remove `+` and `-` from start of diff lines; just rely upon color.
alias diff='git diff --color | sed "s/^\([^-+ ]*\)[-+ ]/\\1/"'
