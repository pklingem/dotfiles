export PATH=/usr/local/bin:$PATH
export PATH=:$PATH:./node_modules/.bin
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
alias doc="docker-compose"
alias drm="docker-compose run --rm"
alias drma="docker-compose run --rm app"
alias dcbncp="docker-compose build --no-cache --pull"
alias 360="tmuxinator start 360"
alias dvclean='docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro -v /var/lib/docker:/var/lib/docker martin/docker-cleanup-volumes'
alias docker-clean-dangling='docker rmi $(docker images -f "dangling=true" -q)'
alias docker-clean='docker rm $(docker ps -a -q) && docker rmi $(docker images -q) && docker ps -a | cut -c-12 | xargs docker rm'
alias fix-video='sudo killall VDCAssistant'
alias dbncp='docker-compose build --no-cache --pull'
alias drm='docker-compose run --rm'
corsify() { heroku config:set AUTH0_COOKIE_DOMAIN=frontend-360-pr-$1.herokuapp.com --app frontend-360-pr-$1; }

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

# added by travis gem
[ -f /Users/patrick/.travis/travis.sh ] && source /Users/patrick/.travis/travis.sh
