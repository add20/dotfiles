#!/bin/sh

DIR=`pwd`

ln -sf ~/dotfiles/vim/.vimrc ~/.vimrc
ln -sf ~/dotfiles/vim/.gvimrc ~/.gvimrc

unlink ~/.vim
if [ ! -d ~/.vim ]; then
  ln -s ~/dotfiles/vim/runtime ~/.vim
fi

mkdir -p ~/.vim/bundle

# for vimproc
vimproc_path=~/.vim/bundle/vimproc.vim
if [ -d $vimproc_path ]; then
  git -C $vimproc_path pull -q
else
  git clone git://github.com/Shougo/vimproc.vim.git $vimproc_path
fi

cd $vimproc_path
if [[ $OSTYPE == "freebsd*" ]]; then
  sudo pkg install -q -y gmake
  gmake
else
  make
fi
cd $DIR

# for NeoBundle
neobundle_path=~/.vim/bundle/neobundle.vim
if [ -d $neobundle_path ]; then
  git -C $neobundle_path pull -q
else
  git clone git://github.com/Shougo/neobundle.vim.git $neobundle_path
fi
vim -u ~/dotfiles/vim/lib/bundle.vim -c 'NeoBundleInstall!' -c 'q'
