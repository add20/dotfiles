#!/bin/sh

DOT_FILES=( .bash_profile .zshrc .gemrc .gitconfig .gitignore .inputrc .vimrc .vim .emacs .rvmrc .sqliterc)

for file in ${DOT_FILES[@]}
do
    ln -s $HOME/dotfiles/$file $HOME/$file
done
