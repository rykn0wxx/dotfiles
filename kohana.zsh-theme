local ret_status="%(?:%{$fg_bold[red]%}λ:%{$fg_bold[red]%}λ%s)"

function get_pwd(){
#  git_root=$PWD
#  while [[ $git_root != / && ! -e $git_root/.git ]]; do
#    git_root=$git_root:h
#  done
#  if [[ $git_root = / ]]; then
#    unset git_root
#    prompt_short_dir=%~
#  else
#    parent=${git_root%\/*}
#    prompt_short_dir=${PWD#$parent/}
#  fi
  prompt_short_dir="%1d"
  echo $prompt_short_dir
}

PROMPT='$ret_status %{$fg[white]%}$(get_pwd) $(git_prompt_info)%{$reset_color%}%{$reset_color%}%{$fg_bold[red]%}➜ %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[blue]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[orange]%}✗%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[cyan]%}✓%{$reset_color%} "

#ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}[git:"
#ZSH_THEME_GIT_PROMPT_SUFFIX="]%{$reset_color%}"
#ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}+%{$reset_color%}"
#ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}"
