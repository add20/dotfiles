# Load NVM function
source ~/.nvm/nvm.sh

export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=$HOME/bin:$PATH

if [[ $OSTYPE == darwin* ]]; then
  # neocomplcache-ghc (neco-ghc) for Vim
  export PATH=$HOME/Library/Haskell/bin:$PATH

  # for gtk2hs and gtk cabal package
  # http://www.haskell.org/haskellwiki/Gtk2Hs/Mac
  export PKG_CONFIG_PATH=/usr/local/opt/glade/lib/pkgconfig:$PKG_CONFIG_PATH
  export PKG_CONFIG_PATH=/usr/local/opt/cairo/lib/pkgconfig:$PKG_CONFIG_PATH
  export PKG_CONFIG_PATH=/usr/local/opt/glib/lib/pkgconfig:$PKG_CONFIG_PATH
  export PKG_CONFIG_PATH=/usr/local/opt/gtk+/lib/pkgconfig:$PKG_CONFIG_PATH
  export PKG_CONFIG_PATH=/opt/X11/lib/pkgconfig:$PKG_CONFIG_PATH
fi

export PATH=$HOME/.cabal/bin:$PATH

### Added by the Heroku Toolbelt
# export PATH="/usr/local/heroku/bin:$PATH"
