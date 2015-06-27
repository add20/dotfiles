#!/bin/sh

# for oh-my-zsh
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
ln -s ~/dotfiles/.zsh/plugins ~/.oh-my-zsh/custom/
ln -s ~/dotfiles/.zsh/themes ~/.oh-my-zsh/custom/
git clone https://github.com/zsh-users/zsh-completions.git ~/.zsh-completions

DOT_FILES=( .tmux.conf .zsh .zshrc .zshenv .gemrc .bundle .gitconfig .gitattribues .gitignore .agignore .inputrc .emacs .sqliterc .ghci .pandoc .stylish-haskell.yaml .hirc)

for file in ${DOT_FILES[@]}
do
    ln -s $HOME/dotfiles/$file $HOME/$file
done

# for antigen-hs
git clone https://github.com/Tarrasch/antigen-hs.git ~/dotfiles/.zsh/antigen-hs
cabal --no-require-sandbox install shelly

