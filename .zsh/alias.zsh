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

# Git
alias g="git"
alias gs="git st"
alias gi="git ci"

# git-flow
alias gffe="git flow feature"
alias gfho="git flow hotfix"
alias gfre="git flow release"
alias gfsu="git flow support"

# pandoc
alias pandoc-pdf="pandoc -V mainfont=OsakaMono -V documentclass=ltjarticle --latex-engine=lualatex --toc"
alias pandoc-slide="pandoc -s --highlight-style pygments --toc -t"
# https://github.com/jgm/pandoc/wiki/Using-pandoc-to-produce-reveal.js-slides
alias pandoc-revealjs="pandoc -s -t html5 --template=template-revealjs.html --section-divs"
# alias pandoc-revealjs="pandoc -s -t html5 --template=template-revealjs.html --section-divs -V theme=default -V transition=default"
# theme=default, sky, beige, simple, serif, night, moon, solarized
# transition=default, cube, page, concave, zoom, linear, fade, none

alias -s bz2='tar vvtf'
alias -s gz='tar vvtzf'
alias -s tgz='tar vvtzf'
alias -s zip=zipinfo
alias -s exe=mono # for C# application

case "${OSTYPE}" in
darwin*)
  alias ls="ls -G -w"

  # Vagrant
  alias vagrant="/Applications/Vagrant/bin/vagrant"

  # Vim
  alias vi='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
  alias vim='vi'

  # reveal.js
  alias revealjs-init="ln -shf ~/OSS/reveal.js/{css,js,lib,plugin} ."
  ;;
freebsd*)
  alias ls="ls -G -w"
  ;;
linux*)
  alias ls="ls --color"
  ;;
esac
