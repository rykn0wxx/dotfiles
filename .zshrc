#!/usr/bin/env zsh
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="kohana"
zstyle ':omz:update' mode disabled
ZSH_COLORIZE_STYLE="colorful"
ZSH_COLORIZE_CHROMA_FORMATTER=terminal256
ZSH_COLORIZE_TOOL=pygmentize
plugins=(git colorize)
source $ZSH/oh-my-zsh.sh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# bash -c 'source /root/.bashrc;$SHELL'
# bash --init-file <(echo "source /root/.bash_profile;exit")
compdef _doctl doctl
source /root/.bashrc
