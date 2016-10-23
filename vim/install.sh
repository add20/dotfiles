#!/usr/bin/env bash

DIR=`pwd`

ln -sf ~/dotfiles/vim/.vimrc ~/.vimrc
ln -sf ~/dotfiles/vim/.gvimrc ~/.gvimrc

unlink ~/.vim
if [ ! -d ~/.vim ]; then
  ln -s ~/dotfiles/vim/runtime ~/.vim
fi

mkdir -p ~/.vim/plugged
