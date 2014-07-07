. ~/.local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh
source /etc/profile.d/bash_completion.sh

alias tmux="tmux -2"

alias ls="ls --color"
alias be="bundle exec"
alias befr="bundle exec foreman run"

alias gs="git status"
alias gf="git fetch"
alias gprom="git pull --rebase origin master"
alias grc="git rebase --continue"
alias ga="git add ."
alias gA="git add -A"

# added by travis gem
[ -f /Users/patrick/.travis/travis.sh ] && source /Users/patrick/.travis/travis.sh
