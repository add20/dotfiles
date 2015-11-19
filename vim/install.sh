#!/bin/sh

ln -sf ~/dotfiles/vim/.vimrc ~/.vimrc
ln -sf ~/dotfiles/vim/.gvimrc ~/.gvimrc

unlink ~/.vim
if [ ! -d ~/.vim ]; then
  ln -s ~/dotfiles/vim/runtime ~/.vim
fi

# for NeoBundle
mkdir -p ~/.vim/bundle
neobundle_path=~/.vim/bundle/neobundle.vim
if [ -d $neobundle_path ]; then
  git -C $neobundle_path pull -q
else
  git clone git://github.com/Shougo/neobundle.vim.git $neobundle_path
fi
vim -u ~/dotfiles/vim/lib/bundle.vim -c 'NeoBundleInstall!' -c 'q'
