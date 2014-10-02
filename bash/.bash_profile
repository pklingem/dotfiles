#if [ -f ~/.bashrc ]; then
#   source ~/.bashrc
#fi

export EDITOR=vim
PATH=$PATH:$HOME/.local/bin:$HOME/bin

alias lsa="ls -lah"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

alias scorm-provision="knife ssh -i ~/.ssh/perfectscorm.pem name:scorm-engine-acceptance-1 \"sudo chef-client\" -x ubuntu"
alias scorm-ssh="ssh -i ~/.ssh/perfectscorm.pem ubuntu@perfectscorm.com"
alias be="bundle exec"
alias befr="bundle exec foreman run"
alias rise-reset="killall ruby && befr rake db:drop db:create db:migrate db:test:clone && befr rake db:seed"

source ~/.bash_profile.`uname`
