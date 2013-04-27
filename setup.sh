#!/bin/sh

DOT_FILES=( bin .tmux.conf .zsh .zshrc .zshenv .gemrc .gitconfig .gitignore .inputrc .vimrc .vim .emacs .sqliterc .ghci)

for file in ${DOT_FILES[@]}
do
    ln -s $HOME/dotfiles/$file $HOME/$file
done

# for oh-my-zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
rm -fr ~/.oh-my-zsh/custom
ln -s ~/dotfiles/.zsh/plugins ~/.oh-my-zsh/custom
ln -s ~/dotfiles/.zsh/themes/add20.zsh-theme ~/.oh-my-zsh/themes/add20.zsh-theme

# for NeoBundle
mkdir -p ~/dotfiles/.vim/bundle
git clone git://github.com/Shougo/neobundle.vim.git ~/dotfiles/.vim/bundle/neobundle.vim
vim -u ~/dotfiles/.vimrc.bundle +NeoBundleInstall! +q
