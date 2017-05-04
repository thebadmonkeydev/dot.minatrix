export PATH="$HOME/.rvm/bin:$PATH" # Add RVM to PATH for scripting

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

if [ -f ~/.rvm/scripts/rvm ]; then
  source ~/.rvm/scripts/rvm
fi

