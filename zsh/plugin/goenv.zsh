export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
eval "$(goenv init -)"

# goenvでGOPATHが設定される
# export GOPATH=$HOME
export PATH="$GOROOT/bin:$PATH"
export PATH="$PATH:$GOPATH/bin"