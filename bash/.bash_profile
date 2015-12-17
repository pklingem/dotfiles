if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

export EDITOR=vim
PATH=$PATH:$HOME/.local/bin:$HOME/bin

alias lsa="ls -lah"
alias nvim="nvim -u ~/.nvim"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="./node_modules/.bin:$PATH"

alias be="bundle exec"
alias befr="bundle exec foreman run"

killport() { kill -9 `lsof -i tcp:"$@" -Fp|tr -d p`;}

### NVM
export NVM_DIR=~/.nvm

source ~/.bash_profile.`uname`
