#!/bin/bash
#
# init_style_guide()
#
# Installs a default set of codeclimate config files at $PWD
#
# OPTIONS
#   -l
#     List style guides

styleguides=(
  .codeclimate.yml
  .rubocop.yml
  .ruby-style.yml
)

init_style_guide () {
  for file in "${styleguides[@]}"; do
    if [ "$1" == "-l" ]; then
      echo "$file"
    else
      ucopy "$DOTFILES/codeclimate/$file" "$PWD"
    fi
  done
}
