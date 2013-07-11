# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="danielwilber"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git kirby ruby rails textmate)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

export PATH="/usr/bin:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:~/bin:/Applications/MAMP/Library/bin:$PATH"

echo ""

export EDITOR="vim"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

alias ll="ls -lahG"

PATH=$HOME/.rvm/bin:$PATH # Add RVM to PATH for scripting

PATH=$PATH:/usr/share/ruby-rvm/bin # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
export PATH=$HOME/local/bin:$PATH
