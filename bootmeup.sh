#!/usr/bin/env bash

homedir=$HOME;

# Download Git Auto-Completion
curl -o ${homedir}/.git-completion.bash "https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash";

function justDoIt() {
  rsync --force -q --exclude ".git/" \
    --exclude ".DS_Store" \
    --exclude ".osx" \
    --exclude "bootstrap.sh" \
    --exclude "README.md" \
    --exclude "LICENSE-MIT.txt" \
    -avh --no-perms . ~;
  source ${homedir}/.git-completion.bash;
  source ~/.bash_profile;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
  justDoIt;
else
  read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
  echo "";
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    justDoIt;
  fi;
fi;

unset justDoIt;
