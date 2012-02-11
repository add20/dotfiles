source ~/.common/.aliases
source ~/.common/.exports
source ~/.common/.functions
source ~/.common/.paths

source ~/.zsh/.aliases
source ~/.zsh/.prompt

autoload zed

fpath=(~/.zsh/functions ${fpath})
autoload -U compinit
compinit

bindkey '^p' history-beginning-search-backward
bindkey '^n' history-beginning-search-forward
bindkey -s '^[L' "^E|less^M"
bindkey -s '^[G' "^E| grep "

setopt auto_cd
setopt auto_pushd
setopt correct
# setopt list_packed # 補完候補を詰めて表示
setopt nolistbeep
setopt noautoremoveslash
setopt complete_aliases
setopt extended_glob
# setopt braceccl
#   % setopt braceccl
#   % echo {0-9A-Ma-z}
#   0 9 A B C D E F G H I J K L M a b c d e f

zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' '+m:{A-Z}={a-z}'
zstyle ':completion:*:(processes|jobs)' menu yes select=2

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
