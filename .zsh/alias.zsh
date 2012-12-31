# navigation
alias ..="cd .."
alias ...="cd ../.."

# ls
alias ls="ls -G"
alias lf="ls -F"
alias ll="ls -l"
alias la="ls -la"

alias df="df -h"
alias du="du -h"

# Shortcuts
alias g="git"
alias gi="git"

# git-flow
alias gffe="git flow feature"
alias gfho="git flow hotfix"
alias gfre="git flow release"
alias gfsu="git flow support"

# DB
alias odb="open -a /Applications/SQLite\ Database\ Browser\ 2.0\ b1.app"

alias -s bz2='tar vvtf'
alias -s gz='tar vvtzf'
alias -s tgz='tar vvtzf'
alias -s zip=zipinfo
alias -s exe=mono # for C# application

case "${OSTYPE}" in
freebsd*|darwin*)
  alias ls="ls -G -w"
  ;;
linux*)
  alias ls="ls --color"
  ;;
esac
