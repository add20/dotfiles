### HISTORY ###
HISTFILE=~/.zsh_history
HISTSIZE=50000 # メモリに保存される履歴の件数。(保存数だけ履歴を検索できる)
SAVEHIST=50000 # HISTFILE で指定したファイルに保存される履歴の件数。
setopt share_history      # share command history dataautoload
setopt hist_ignore_dups           # 前と重複する行は記録しない
setopt hist_ignore_all_dups       # 履歴中の重複行をファイル記録前に無くす
setopt hist_find_no_dups          # 履歴検索中、(連続してなくとも)重複を飛ばす
setopt hist_reduce_blanks         # 余分な空白は詰めて記録
setopt hist_no_store              # histroyコマンドは記録しない

autoload zed

fpath=(~/dotfiles/zsh/functions ${fpath})
fpath=(~/github.com/zsh-users/zsh-completions/src $fpath)
autoload -U compinit
compinit

bindkey -e

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

zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z} r:|[-_.]=**' '+m:{A-Z}={a-z}'
zstyle ':completion:*:(processes|jobs)' menu yes select=2

autoload predict-on
predict-on
# setopt no_multios "example: % < file1 < file2"

# zsh: stop backward-kill-word on directory delimiter
# http://stackoverflow.com/questions/444951/zsh-stop-backward-kill-word-on-directory-delimiter
autoload -U select-word-style
select-word-style bash

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

export ZSH_HOME=~/dotfiles/zsh
source $ZSH_HOME/lib/alias.zsh
source $ZSH_HOME/lib/export.zsh
source $ZSH_HOME/lib/function.zsh
source $ZSH_HOME/lib/path.zsh
# source $ZSH_HOME/theme/prompt.zsh
source $ZSH_HOME/theme/add20.zsh
source $ZSH_HOME/plugin/auto_ls.zsh
source $ZSH_HOME/plugin/enter_cmd.zsh
source $ZSH_HOME/plugin/peco.zsh
source $ZSH_HOME/plugin/rbenv.zsh
source $ZSH_HOME/plugin/nvm.zsh
# source $ZSH_HOME/plugin/tmux.zsh
# source $ZSH_HOME/plugin/texlive.zsh
source ~/src/github.com/zsh-users/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
