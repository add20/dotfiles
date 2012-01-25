#!/bin/bash
cd "$(dirname "$0")"
git pull
git submodule update --init .vim/bundle/*
function doIt() {
  ./gitconfig.sh
  rsync --exclude ".git/" \
    --exclude "bootstrap.sh" \
    --exclude "gitconfig.sh" \
    --exclude "README.md" \
    -av . ~
}
if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
	echo
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt
	fi
fi
unset doIt
source ~/.bash_profile
