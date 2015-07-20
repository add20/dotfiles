# ghq + peco/percol
# http://weblog.bulknews.net/post/89635306479/ghq-peco-percol
function peco-src () {
    local selected_dir=$(ghq list --full-path | peco --query "$LBUFFER")
    if [ -n "$selected_dir" ]; then
        BUFFER="cd ${selected_dir}"
        zle accept-line
    fi
    zle clear-screen
}
zle -N peco-src
bindkey '^]' peco-src

# zshにpeco + ghqを導入したメモ
# http://qiita.com/ysk_1031/items/8cde9ce8b4d0870a129d
function peco_select_history() {
  local tac
  if which tac > /dev/null; then
    tac="tac"
  else
    tac="tail -r"
  fi
  BUFFER=$(fc -l -n 1 | eval $tac | peco --query "$LBUFFER")
  CURSOR=$#BUFFER
  zle clear-screen
}
zle -N peco_select_history
bindkey '^r' peco_select_history

# カレントディレクトリ以下のファイルをvimで開く
function peco-vim () {
    local selected_file=$(find . -type f | peco --query "$LBUFFER")
    if [ -n "$selected_file" ]; then
        BUFFER="vim ${selected_file}"
        zle accept-line
    fi
    zle clear-screen
}
zle -N peco-vim
bindkey '^\' peco-vim

alias -g P='| peco'
