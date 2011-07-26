PROMPT='
%{$fg[white]%} %{$fg[cyan]%}${PWD/#$HOME/~} %{$fg[red]%}$(git_prompt_info)
%{$reset_color%}→ '

ZSH_THEME_GIT_PROMPT_PREFIX="[git:" 
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="] ⚡%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="]%{$reset_color%}"