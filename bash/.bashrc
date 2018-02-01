export PATH=/usr/local/bin:$PATH
export PATH=$PATH:$HOME/.local/bin:$HOME/bin
export PATH=$PATH:./node_modules/.bin
export PATH=$PATH:~/.config/yarn/global/node_modules/.bin/
export PATH="$HOME/.yarn/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export EDITOR=vim
export AWS_FUZZ_USER="pklingemann"
export VAULT_ADDR=http://vault-priv.dev.articulate.zone
export NPM_TOKEN=`cat ~/.npmrc | tr "=" "\n" | tail -n 1`
alias grep="grep --color=auto"
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
alias dub='docker-compose up --build --force-recreate'
alias docker-unhash='unset DOCKER_CERT_PATH DOCKER_MACHINE_NAME DOCKER_TLS_VERIFY DOCKER_HOST'

# workspaces
alias 360="tmuxinator start 360"
alias rise="tmuxinator start rise"
alias rise.com="tmuxinator start rise.com"

# ls
alias lsa="ls -lah"

# nvim
alias nvim="nvim -u ~/.nvim"

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

concon () {
  case "$1" in
    "prod") profile=prod ;;
    "stage") profile=default ;;
  esac
  ip=$(aws ec2 --profile $profile describe-instances --filters "Name=tag:App,Values=$2" "Name=instance-state-name,Values=running" --query 'Reservations[0].Instances[0].PrivateIpAddress' --output text)
  echo "connecting to $ip"
  ssh -t $ip concon ${@:3}
}

killport() { kill -9 `lsof -i tcp:"$@" -Fp|tr -d p`;}

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="./node_modules/.bin:$PATH"

source ~/.bashrc.`uname`
