#!/usr/bin/env bash

ln -sf ~/dotfiles/zsh/.zshrc ~/.zshrc

lib_path=~/src/github.com/zsh-users/zsh-syntax-highlighting
if [ -d $lib_path ]; then
  git -C $lib_path pull -q
else
  mkdir -p ~/src/github.com/zsh-users
  git clone -q https://github.com/zsh-users/zsh-syntax-highlighting.git $lib_path
fi

