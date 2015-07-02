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

export PATH=/usr/bin:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:~/bin:/Applications/MAMP/Library/bin:$PATH

export PATH=/usr/local/share/npm/bin:$PATH

export PATH=/Applications/Postgres\.app/Contents/MacOS:/Applications/Postgres\.app/Contents/MacOS/bin:$PATH

export EDITOR="vim"


alias ll="ls -lahG"

#PATH=$HOME/.rvm/bin:$PATH # Add RVM to PATH for scripting

#PATH=$PATH:/usr/share/ruby-rvm/bin # Add RVM to PATH for scripting

export PATH=$HOME/local/bin:$PATH

[[ -e ~/.profile ]] && emulate sh -c 'source ~/.profile'

PATH=/opt/homebrew/bin:usr/bin:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:~/bin:/Applications/MAMP/Library/bin:/usr/lib/lightdm/lightdm:/usr/sbin:/sbin:/bin:/usr/games:$PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
