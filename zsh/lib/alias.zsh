# navigation
alias ...="cd ../.."

# ls
alias ls="ls -G"
alias lf="ls -F"
alias ll="ls -lh"
alias la="ls -lha"

alias df="df -h"
alias du="du -h"

# Git
alias g="git"
alias ga="git add"
alias gs="git st"
alias gi="git ci"
alias gd="git diff"
alias gdw="git diff --color-words"
alias gds="git ds"
alias gp="git push"
alias gl="git l"

# git-flow
alias gffe="git flow feature"
alias gfho="git flow hotfix"
alias gfre="git flow release"
alias gfsu="git flow support"

# Haskell
alias htags="echo \":ctags\" | ghci -v0 **/*.hs"
alias ghc-sandbox="ghc -no-user-package-db -package-db .cabal-sandbox/*-packages.conf.d"
alias ghci-sandbox="ghci -no-user-package-db -package-db .cabal-sandbox/*-packages.conf.d"
alias runhaskell-sandbox="runhaskell -no-user-package-db -package-db .cabal-sandbox/*-packages.conf.d"

# OCaml
alias ocaml="LANG=en_US.ISO8859-1 ocaml"

# pandoc
alias pandoc-pdf="pandoc -V mainfont=OsakaMono -V documentclass=ltjarticle --latex-engine=lualatex --tab-stop=2 --toc"
alias pandoc-pdf-no-toc="pandoc -V mainfont=OsakaMono -V documentclass=ltjarticle --latex-engine=lualatex --tab-stop=2"
alias pandoc-slide="pandoc -s --highlight-style pygments --toc -t"
# https://github.com/jgm/pandoc/wiki/Using-pandoc-to-produce-reveal.js-slides
# theme=default, sky, beige, simple, serif, night, moon, solarized
# transition=default, cube, page, concave, zoom, linear, fade, none
# alias pandoc-revealjs="pandoc -s -t html5 --template=template-revealjs.html --section-divs -V theme=default -V transition=default"
alias pandoc-revealjs="pandoc -s -t html5 --template=template-revealjs.html --section-divs"

alias -s bz2='tar vvtf'
alias -s gz='tar vvtzf'
alias -s tgz='tar vvtzf'
alias -s zip=zipinfo
alias -s exe=mono # for C# application

case "${OSTYPE}" in
darwin*)
  alias ls="ls -G -w"

  alias godoc=`brew --prefix go`/libexec/bin/godoc

  # Vim
  alias vi='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
  alias vim='vi'
  alias mvim='/Applications/MacVim.app/Contents/MacOS/mvim'
  alias mvimdiff='/Applications/MacVim.app/Contents/MacOS/mvimdiff'
  # alias ctags='/Applications/MacVim.app/Contents/MacOS/ctags "$@"'

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
