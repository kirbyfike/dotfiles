# this tests for the presence of rvm 
# if its loaded, it'll add the prompt
rvm_prompt() {
  ruby_version=$($HOME/.rvm/bin/rvm-prompt v p g)
  if [ -n "$ruby_version" ]; then
    echo "[$ruby_version]"
  fi
}

PROMPT='
%{$fg[31]%}%{$fg[cyan]%}${PWD/#$HOME/~} %{$fg[magenta]%}$(git_prompt_info)
%{$reset_color%}→ '

RPROMPT='%{$fg[green]%}$(rvm_prompt)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="[git:" 
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="] ⚡%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="]%{$reset_color%}"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 

