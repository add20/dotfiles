autoload colors
colors

# PS1="%B%2~%b %{${fg[blue]}%}%#%{$reset_color%} "
PS1="%B%2~%b %F{blue}%#%f "

case ${UID} in
0)
  # PS1="%{${fg[cyan]}%}$(echo ${HOST%%.*} | tr '[a-z]' '[A-Z]')%{$reset_color%} ${PS1}"
  PS1="%F{cyan}$(echo ${HOST%%.*} | tr '[a-z]' '[A-Z]')%f ${PS1}"
  ;;
*)
  # When remote login
  [ -n "${REMOTEHOST}${SSH_CONNECTION}" ] &&
    # PS1="%{${fg[cyan]}%}$(echo ${HOST%%.*} | tr '[a-z]' '[A-Z]')%{$reset_color%} ${PS1}"
    PS1="%F{cyan}$(echo ${HOST%%.*} | tr '[a-z]' '[A-Z]')%f ${PS1}"
  ;;
esac

### Git Setting ###
autoload -Uz add-zsh-hook
autoload -Uz vcs_info

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' formats       '(%s)-[%b %u%c]'
zstyle ':vcs_info:*' actionformats '(%s)-[%b|%a %u%c]'
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b:r%r'

autoload -Uz is-at-least
if is-at-least 4.3.10; then
  zstyle ':vcs_info:git:*' check-for-changes true
  zstyle ':vcs_info:git:*' stagedstr "+"
  zstyle ':vcs_info:git:*' unstagedstr "*"
  zstyle ':vcs_info:git:*' formats '(%s)-[%b %u%c]'
  zstyle ':vcs_info:git:*' actionformats '(%s)-[%b|%a %u%c]'
fi

function _update_vcs_info_msg() {
  psvar=()
  LANG=en_US.UTF-8 vcs_info
  [[ -n "$vcs_info_msg_0_" ]] && psvar[1]="$vcs_info_msg_0_"
}
add-zsh-hook precmd _update_vcs_info_msg

# RPROMPT="%{${fg[green]}%}%1(v.%1v.)%{$reset_color%}"
RPROMPT="%F{green}%1(v.%1v.)%f"
