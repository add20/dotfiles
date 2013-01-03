### HISTORY ###
HISTFILE=~/.zsh_history
HISTSIZE=50000 # メモリに保存される履歴の件数。(保存数だけ履歴を検索できる)
SAVEHIST=50000 # HISTFILE で指定したファイルに保存される履歴の件数。
setopt hist_ignore_dups # ignore duplication command history list
setopt share_history    # share command history data

if which rbenv > /dev/null; then eval "$(rbenv init - zsh)"; fi
