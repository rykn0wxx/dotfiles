#!/usr/bin/env zsh

# user, host, full path, and time/date
# on two lines for easier vgrepping
# entry in a nice long thread on the Arch Linux forums: https://bbs.archlinux.org/viewtopic.php?pid=521888#p521888
PROMPT=$'%{$fg_bold[red]%} [%{$fg[white]%} %c %{$fg_bold[red]%}]%{$reset_color%} $(git_prompt_info)
%{$fg_bold[red]%} %B%{$fg_bold[white]%}#%{$fg_bold[red]%}%{\e[0m%}%b '
PS2=$' \e[0;34m%}%B>%{\e[0m%}%b '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[cyan]%}(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[cyan]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[cyan]%})"
