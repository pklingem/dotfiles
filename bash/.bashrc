export PATH=/usr/local/bin:$PATH
export PATH=$PATH:./node_modules/.bin
export PATH=$PATH:~/.config/yarn/global/node_modules/.bin/
export AWS_FUZZ_USER="pklingemann"
alias aws-fuzzy-prod="AWS_DEFAULT_PROFILE=prod aws-fuzzy"

# tmux
alias tmux="tmux -2"

# bundle
alias be="bundle exec"
alias befr="bundle exec foreman run"

# git
alias gst="git status -sb"
alias gf="git fetch"
alias gprom="git pull --rebase origin master"
alias grc="git rebase --continue"
alias ga="git add ."
alias gA="git add -A"
alias gpf="git pull --ff-only"

# docker
alias doc="docker-compose"
alias drm="docker-compose run --rm"
alias drma="docker-compose run --rm app"
alias dcbncp="docker-compose build --no-cache --pull"
alias dbncp='docker-compose build --no-cache --pull'
alias drm='docker-compose run --rm'
alias docker-unhash='unset DOCKER_CERT_PATH DOCKER_MACHINE_NAME DOCKER_TLS_VERIFY DOCKER_HOST'

# workspaces
alias 360="tmuxinator start 360"
alias rise="tmuxinator start rise"

alias fix-video='sudo killall VDCAssistant'

git-freebase() {
  set -e
  git add .
  git reset --hard
  git checkout $1
  git fetch
  git reset --hard origin/$1
  git pull --rebase origin master
  git push -f origin $1
  git checkout -
}

export NVM_DIR="/Users/patrick/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

source ~/.bashrc.`uname`
