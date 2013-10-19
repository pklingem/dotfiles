PATH=$PATH:$HOME/.local/bin:$HOME/bin

alias lsa="ls -lah"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

alias scorm-provision="knife ssh -i ~/.ssh/perfectscorm.pem name:scorm-engine-acceptance-1 \"sudo chef-client\" -x ubuntu"
alias scorm-ssh="ssh -i ~/.ssh/perfectscorm.pem ubuntu@perfectscorm.com"

source ~/.bash_profile.`uname`
