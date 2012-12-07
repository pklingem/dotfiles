# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin

killport() { kill -9 `lsof -i tcp:"$@" -Fp|tr -d p`;}

export PATH

alias labrador-start="cd $HOME/.labrador && bundle exec rails s -e production -p 7488"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
