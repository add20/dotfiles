#!/usr/bin/env bash

bash vim/install.sh
bash zsh/install.sh

DOT_FILES=( .gemrc .bundle .gitconfig .gitattribues .gitignore .agignore .sqliterc .ghci )

for file in ${DOT_FILES[@]}
do
    ln -s $HOME/dotfiles/$file $HOME/$file
done
