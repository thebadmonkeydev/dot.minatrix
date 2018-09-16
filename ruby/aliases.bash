# rails aliases, might move to new bash functions
alias migrate='bundle exec rails db:migrate && bundle exec rails db:test:prepare'
alias be='bundle exec'
alias rubocop='git diff -z --name-only origin/master..HEAD | xargs -0 bundle exec rubocop-select | xargs rubocop'
