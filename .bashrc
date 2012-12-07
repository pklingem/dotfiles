# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
alias gs='git status'
alias ga='git add .'
alias gA='git add -A .'
alias gc='git commit'
alias gp='git pull'
alias gp='git push'
alias gf='git fetch'
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gd='git diff'

xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'

export CLINICAL_URL=mysql://root@localhost:3306/clinical_db
export AWSACCESSKEYID=AKIAIO3663GKKSRLVDKA
export AWSSECRETACCESSKEY=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

export S3_KEY=0F89W67P3HM5MJ9YRER2
export S3_SECRET=gGHb1PPZru+3o3oI9l1W2RUtiML0r3/roFPN21Sh

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
PATH=$PATH:/usr/local/heroku/bin

function _update_ps1()
{
    export PS1="$(~/powerline-bash.py $?)"
}

export PROMPT_COMMAND="_update_ps1"
