source ~/.common/.aliases
source ~/.common/.exports
source ~/.common/.functions
source ~/.common/.paths

source ~/.zsh/.aliases
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
setopt noautoremoveslash
setopt complete_aliases

autoload predict-on
predict-on
# setopt no_multios "example: % < file1 < file2"

case "${TERM}" in
kterm*|xterm*)
    export LSCOLORS=exfxcxdxbxegedabagacad
    export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
    zstyle ':completion:*' list-colors 'di=34' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'
    ;;
cons25)
    unset LANG
    export LSCOLORS=ExFxCxdxBxegedabagacad
    export LS_COLORS='di=01;34:ln=01;35:so=01;32:ex=01;31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
    zstyle ':completion:*' list-colors 'di=;34;1' 'ln=;35;1' 'so=;32;1' 'ex=31;1' 'bd=46;34' 'cd=43;34'
    ;;
esac
