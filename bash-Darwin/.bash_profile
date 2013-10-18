PATH=$PATH:~/Library/Python/2.7/bin
PATH=$PATH:~/bin
source ~/.profile

alias ls="ls -G"
alias lsa="ls -lah"

. ~/Library/Python/2.7/lib/python/site-packages/powerline/bindings/bash/powerline.sh

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
