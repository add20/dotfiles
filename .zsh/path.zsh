# Load NVM function
source ~/.nvm/nvm.sh

export GOPATH=$HOME/code/go

export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=$HOME/bin:$PATH
export PATH=$HOME/.rbenv/bin:$PATH
export PATH=$GOPATH/bin:$PATH

if [[ $OSTYPE == darwin* ]]; then
  # neocomplcache-ghc (neco-ghc) for Vim
  export PATH=$HOME/Library/Haskell/bin:$PATH
fi

export PATH=$HOME/.cabal/bin:$PATH

### Added by the Heroku Toolbelt
# export PATH="/usr/local/heroku/bin:$PATH"
