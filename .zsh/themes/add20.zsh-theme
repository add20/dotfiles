# [Zsh][Git] git のブランチ名 *と作業状態* を zsh の右プロンプトに表示＋ status に応じて色もつけてみた
# http://d.hatena.ne.jp/uasi/20091025/1256458798
autoload -Uz VCS_INFO_get_data_git; VCS_INFO_get_data_git 2> /dev/null

function rprompt-git-current-branch {
  local name st color gitdir action
  if [[ "$PWD" =~ '/\.git(/.*)?$' ]]; then
    return
  fi

  name=`git rev-parse --abbrev-ref=loose HEAD 2> /dev/null`
  if [[ -z $name ]]; then
    return
  fi

  gitdir=`git rev-parse --git-dir 2> /dev/null`
  action=`VCS_INFO_git_getaction "$gitdir"` && action="($action)"

  if [[ -e "$gitdir/rprompt-nostatus" ]]; then
    echo "$name$action "
    return
  fi

  st=`git status 2> /dev/null`
  if [[ "$st" =~ "(?m)^nothing to" ]]; then
    color=%F{green}
  elif [[ "$st" =~ "(?m)^nothing added" ]]; then
    color=%F{yellow}
  elif [[ "$st" =~ "(?m)^# Untracked" ]]; then
    color=%F{magenta}
  else
    color=%F{red}
  fi

  echo "[$color$name$action%f%b]"
}

# mortalscumbag theme of oh-my-zsh
# https://github.com/robbyrussell/oh-my-zsh/blob/master/themes/mortalscumbag.zsh-theme
function ssh_connection() {
  if [[ -n $SSH_CONNECTION ]]; then
    echo "%{$fg_bold[red]%}(ssh) "
  fi
}

# PCRE 互換の正規表現を使う
setopt re_match_pcre

# プロンプトが表示されるたびにプロンプト文字列を評価、置換する
setopt prompt_subst

PROMPT="$(ssh_connection)%B%2~%b %{$fg[blue]%}%#%{$reset_color%} "

RPROMPT='`rprompt-git-current-branch`'
