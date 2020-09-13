#!/usr/bin/env bash

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# Load the shell dotfiles, and then some:
# for file in ~/.{path,exports,aliases,functions,extra}; do
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

HISTCONTROL=ignoreboth;
HISTSIZE=10000;
SAVEHIST=10000;
HISTFILESIZE=10000;

shopt -s cdspell;
shopt -s checkwinsize;

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
unset color_prompt

if [ -x /usr/bin/dircolors ]; then
  test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)";
fi;

# Enable tab completion for `g` by marking it as an alias for `git`
if type _git &> /dev/null; then
  complete -o default -o nospace -F _git g;
fi;

source ~/.bundler-exec.sh

