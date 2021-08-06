#!/usr/bin/env bash

DIR=`pwd`

ln -sf ~/dotfiles/vim/.vimrc ~/.vimrc
ln -sf ~/dotfiles/vim/.gvimrc ~/.gvimrc

unlink ~/.vim
if [ ! -d ~/.vim ]; then
  ln -s ~/dotfiles/vim/runtime ~/.vim
fi

mkdir -p ~/.vim/plugged
mkdir -p ~/.vim/pack

# for Unix
# https://github.com/junegunn/vim-plug
# curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
#     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim