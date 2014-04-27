#!/bin/sh

# for oh-my-zsh
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
ln -s ~/dotfiles/.zsh/plugins ~/.oh-my-zsh/custom/
ln -s ~/dotfiles/.zsh/themes ~/.oh-my-zsh/custom/
git clone https://github.com/zsh-users/zsh-completions.git ~/.zsh-completions

DOT_FILES=( bin .tmux.conf .zsh .zshrc .zshenv .gemrc .bundle .gitconfig .gitattribues .gitignore .agignore .inputrc .vimrc .gvimrc .vim .emacs .sqliterc .ghci .pandoc .stylish-haskell.yaml .hirc)

for file in ${DOT_FILES[@]}
do
    ln -s $HOME/dotfiles/$file $HOME/$file
done

# for NeoBundle
mkdir -p ~/dotfiles/.vim/bundle
git clone git://github.com/Shougo/neobundle.vim.git ~/dotfiles/.vim/bundle/neobundle.vim
vim -u ~/dotfiles/.vimrc.bundle +NeoBundleInstall! +q
