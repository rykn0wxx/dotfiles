#!/usr/bin/env zsh

export PATH=$HOME/bin:$PATH
export ZSH="/root/.oh-my-zsh"

ZSH_THEME="kohana2"
CASE_SENSITIVE="true"
DISABLE_AUTO_UPDATE="true"
DISABLE_UPDATE_PROMPT="true"
ZSH_COLORIZE_STYLE="colorful"
ZSH_COLORIZE_CHROMA_FORMATTER=terminal256

plugins=(git vagrant vagrant-prompt colorize gcloud)

source $ZSH/oh-my-zsh.sh

source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source /root/.bashrc
