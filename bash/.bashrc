export PATH=/usr/local/bin:$PATH

alias tmux="tmux -2"

alias be="bundle exec"
alias befr="bundle exec foreman run"

alias gst="git status -sb"
alias gf="git fetch"
alias gprom="git pull --rebase origin master"
alias grc="git rebase --continue"
alias ga="git add ."
alias gA="git add -A"
alias gpf="git pull --ff-only"
alias doc="docker-compose"
alias drm="docker-compose run --rm"
alias drma="docker-compose run --rm app"

export NVM_DIR="/Users/patrick/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

source ~/.bashrc.`uname`
