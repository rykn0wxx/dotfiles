# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

export PATH=~/.local/bin:/snap/bin:/usr/sandbox/:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games:/usr/share/games:/usr/local/sbin:/usr/sbin:/sbin:$PATH;
# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";

# Load the shell dotfiles, and then some:
# for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
for file in ~/.{path,exports,aliases,functions,extra}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

HISTCONTROL=ignoreboth;
# shopt -s nocaseglob;

# shopt -s histappend;
HISTSIZE=10000;
SAVEHIST=10000;
HISTFILESIZE=10000;

# shopt -s cdspell;
# shopt -s checkwinsize;

for option in autocd globstar; do
  shopt -s "$option" 2> /dev/null;
done;

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

# if ! shopt -oq posix; then
#   if [ -f /usr/share/bash-completion/bash_completion ]; then
#     . /usr/share/bash-completion/bash_completion;
#   elif [ -f /etc/bash_completion ]; then
#     . /etc/bash_completion;
#   fi;
# fi;

# Enable tab completion for `g` by marking it as an alias for `git`
if type _git &> /dev/null; then
  complete -o default -o nospace -F _git g;
fi;

complete -W "NSGlobalDomain" defaults;

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"
# [ -f ~/.bundler-exec.sh ] && source ~/.bundler-exec.sh

c_reset="\e[0m";
c_red="\e[1;31m";

echo -e $c_red;
figlet rykn0wxx -c -t
echo -e $c_reset;
echo '\n'
