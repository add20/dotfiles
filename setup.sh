#!/bin/sh

DOT_FILES=( .tmux.conf .gemrc .bundle .gitconfig .gitattribues .gitignore .agignore .inputrc .emacs .sqliterc .ghci .pandoc .stylish-haskell.yaml .hirc)

for file in ${DOT_FILES[@]}
do
    ln -s $HOME/dotfiles/$file $HOME/$file
done
