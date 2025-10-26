export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.yarn/bin:$PATH"
export PATH=$PATH:$HOME/.local/bin:$HOME/bin
export PATH=$PATH:./node_modules/.bin
export PATH=$PATH:~/.config/yarn/global/node_modules/.bin/
export PATH=/usr/local/bin:$PATH
export EDITOR=vim
export AWS_FUZZ_USER="pklingemann"
export NPM_TOKEN=`grep "registry.npmjs.org" $HOME/.npmrc | awk -F '=' '{print $2}'`
alias grep="grep --color=auto"
alias aws-fuzzy-prod="AWS_DEFAULT_PROFILE=prod aws-fuzzy"
alias gti=git

# less, manpage coloring
export LESS_TERMCAP_mb=$(tput bold; tput setaf 2) # green
export LESS_TERMCAP_md=$(tput bold; tput setaf 6) # cyan
export LESS_TERMCAP_me=$(tput sgr0)
export LESS_TERMCAP_so=$(tput bold; tput setaf 3; tput setab 4) # yellow on blue
export LESS_TERMCAP_se=$(tput rmso; tput sgr0)
export LESS_TERMCAP_us=$(tput smul; tput bold; tput setaf 7) # white
export LESS_TERMCAP_ue=$(tput rmul; tput sgr0)
export LESS_TERMCAP_mr=$(tput rev)
export LESS_TERMCAP_mh=$(tput dim)
export LESS_TERMCAP_ZN=$(tput ssubm)
export LESS_TERMCAP_ZV=$(tput rsubm)
export LESS_TERMCAP_ZO=$(tput ssupm)
export LESS_TERMCAP_ZW=$(tput rsupm)
export GROFF_NO_SGR=1         # For Konsole and Gnome-terminal

export LESS="--RAW-CONTROL-CHARS"

# tmux
alias tmux="tmux -2"
alias mux=tmuxinator

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

# art
alias arto="art -on rise-stage "

# docker
alias doc="docker-compose "
alias drm="docker-compose run --rm "
alias drma="docker-compose run --rm app "
alias dub="docker-compose up --build --force-recreate "

# workspaces
alias 360="tmuxinator start 360"
alias rise="tmuxinator start rise"
alias rise.com="tmuxinator start rise.com"

# ls
alias lsa="ls -lah"

# nvim
alias nvim="nvim -u ~/.nvim"

# terraform
alias terraform="tofu"

alias fix-video='sudo killall VDCAssistant'
alias dorker="sudo iptables -F DOCKER-ISOLATION-STAGE-2"

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

### k8s
alias kubeupgrade='kubectl get deployments -o=custom-columns=NAME:.metadata.name --no-headers | xargs kubectl rollout restart deployment'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="./node_modules/.bin:$PATH"

source ~/.bashrc.`uname`
source ~/.bashrc.local
source <(kubectl completion bash)

# fnm
FNM_PATH="/home/patrick/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="$FNM_PATH:$PATH"
  eval "`fnm env`"
fi
