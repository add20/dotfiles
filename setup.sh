#!/usr/bin/env bash

bash vim/install.sh
bash zsh/install.sh

DOT_FILES=( .gemrc .gitconfig .gitattribues .gitignore .agignore .sqliterc .ghci )

for file in ${DOT_FILES[@]}
do
    ln -s "$HOME/dotfiles/$file" "$HOME/$file"
done

CONFIG_FILES=( starship.toml )

for file in ${CONFIG_FILES[@]}
do
    ln -s "$HOME/dotfiles/$file" "$HOME/.config/$file"
done

ln -s "$HOME/dotfiles/.claude/CLAUDE.md" "$HOME/.claude/CLAUDE.md"