# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="danielwilber"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git ruby rails textmate)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:~/bin:$PATH"
export EDITOR="mate"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

alias ll="ls -lahG"
alias twitter="nocorrect twitter"