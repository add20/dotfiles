#!/bin/sh

DOT_FILES=( .bash_profile .zshrc .zshenv .gemrc .gitconfig .gitignore .inputrc .vimrc .vim .emacs .rvmrc .sqliterc .ghci)

for file in ${DOT_FILES[@]}
do
    ln -s $HOME/dotfiles/$file $HOME/$file
done

# for NeoBundle
mkdir -p ~/dotfiles/.vim/bundle
git clone git://github.com/Shougo/neobundle.vim.git ~/dotfiles/.vim/bundle/neobundle.vim
vim -u ~/dotfiles/.vimrc.bundle +NeoBundleInstall! +q
