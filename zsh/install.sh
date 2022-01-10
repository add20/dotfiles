#!/usr/bin/env bash

ln -sf ~/dotfiles/zsh/.zshrc ~/.zshrc

mkdir -p ~/src/github.com/zsh-users
DIRS=( github.com/zsh-users/{zsh-syntax-highlighting,zsh-completions} )
for DIR in ${DIRS[@]}
do
  # You shouldn't use '~'. You must use '$HOME'.
  # https://stackoverflow.com/questions/973093/strange-error-checking-if-directory-exists-with-bash-script
  LIB="$HOME/src/$DIR"
  URL="https://$DIR.git"
  if [ -d $LIB ]; then
    git -C $LIB pull -q
  else
    git clone -q $URL $LIB
  fi
done
