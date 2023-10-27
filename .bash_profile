#!/usr/bin/env bash
#

case $- in
    *i*) ;;
      *) return;;
esac

for file in ~/.{path,exports,aliases,functions,extra}; do
# for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
  # bash -c 'source /root/.bash_profile'
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

HISTCONTROL=ignoreboth;
HISTSIZE=10000;
SAVEHIST=10000;
HISTFILESIZE=10000;

# shopt -s histappend
# shopt -s checkwinsize
# eval "$(SHELL=/bin/bash command shopt -s checkwinsize)" &>/dev/null
# bash -c "ls;pwd;other commands;$SHELL"
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
  debian_chroot=$(cat /etc/debian_chroot)
fi

color_prompt=yes;
if [ "$color_prompt" = yes ]; then
  function man () {
  env \
  LESS_TERMCAP_mb=$'\e[01;31m' \
  LESS_TERMCAP_md=$'\e[01;31m' \
  LESS_TERMCAP_me=$'\e[0m' \
  LESS_TERMCAP_se=$'\e[0m' \
  LESS_TERMCAP_so=$'\e[01;44;33m' \
  LESS_TERMCAP_ue=$'\e[0m' \
  LESS_TERMCAP_us=$'\e[01;32m' \
  man "$@"
  }
fi
unset color_prompt;

if [ -x /usr/bin/dircolors ]; then
  test -r ~/.dircolors-ansi && eval "$(dircolors -b ~/.dircolors-ansi)" || eval "$(dircolors -b)";
fi;

if type _git &> /dev/null; then
  complete -o default -o nospace -F _git g;
fi;

source <(doctl completion zsh)

# if ! shopt -oq posix; then
#   if [ -f /usr/share/bash-completion/bash_completion ]; then
#     . /usr/share/bash-completion/bash_completion
#   elif [ -f /etc/bash_completion ]; then
#     . /etc/bash_completion
#   fi
# fi

figlet rykn0wxx -c -t
