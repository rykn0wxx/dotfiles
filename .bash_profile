#!/usr/bin/env bash
case $- in
    *i*) ;;
      *) return;;
esac

# export PATH="$HOME/bin:$PATH";
# export PATH="$HOME/bin:/usr/local/bin:$PATH";

for file in ~/.{path,exports,aliases,functions,extra}; do
# for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

HISTCONTROL=ignoreboth;
HISTSIZE=10000;
SAVEHIST=10000;
HISTFILESIZE=10000;

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
  # test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)";
fi;

if type _git &> /dev/null; then
  complete -o default -o nospace -F _git g;
fi;

[ -f /root/.bundler-exec.sh ] && source /root/.bundler-exec.sh
