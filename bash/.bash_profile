if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

export EDITOR=vim
PATH=$PATH:$HOME/.local/bin:$HOME/bin

alias lsa="ls -lah"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="./node_modules/.bin:$PATH"

alias scorm-provision="knife ssh -i ~/.ssh/perfectscorm.pem name:scorm-engine-acceptance-1 \"sudo chef-client\" -x ubuntu"
alias scorm-ssh="ssh -i ~/.ssh/perfectscorm.pem ubuntu@perfectscorm.com"
alias be="bundle exec"
alias befr="bundle exec foreman run"

alias rise="export PROMPT_COMMAND='echo -ne \"\033]0;rise\007\"' && tmux && teamocil --here rise"
alias shine="export PROMPT_COMMAND='echo -ne \"\033]0;shine\007\"' && tmux && teamocil --here shine"
alias rise-authoring="export PROMPT_COMMAND='echo -ne \"\033]0;rise-authoring\007\"' && tmux && teamocil --here rise-authoring"
alias mandolin="export PROMPT_COMMAND='echo -ne \"\033]0;mandolin\007\"' && tmux && teamocil --here mandolin"

killport() { kill -9 `lsof -i tcp:"$@" -Fp|tr -d p`;}

source ~/.bash_profile.`uname`
