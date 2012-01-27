source ~/.common/.aliases
source ~/.common/.exports
source ~/.common/.functions
source ~/.common/.paths

source ~/.zsh/.prompt

autoload -U compinit
compinit

HISTFILE=~/.zsh_history
HISTSIZE=10000 # メモリに保存される履歴の件数。(保存数だけ履歴を検索できる)
SAVEHIST=10000 # HISTFILE で指定したファイルに保存される履歴の件数。
setopt hist_ignore_dups # ignore duplication command history list
setopt share_history    # share command history data

setopt auto_cd
setopt auto_pushd
setopt correct
# setopt list_packed # 補完候補を詰めて表示
setopt nolistbeep
