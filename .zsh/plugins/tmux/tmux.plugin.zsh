# for Vim?
alias tmux="TERM=screen-256color-bce tmux"

# for zsh
# tmuxでautomatic-rename offの設定を無視られないようにする
# http://ufssf.hateblo.jp/entry/2012/08/17/085547
DISABLE_AUTO_TITLE=true

# ターミナル起動時にtmuxを自動起動
# http://yonchu.hatenablog.com/entry/20120514/1337026014
if [ -z "$TMUX" -a -z "$STY" ]; then
    if type tmuxx >/dev/null 2>&1; then
        tmuxx
    elif type tmux >/dev/null 2>&1; then
        if tmux has-session && tmux list-sessions | /usr/bin/grep -qE '.*]$'; then
            tmux attach && echo "tmux attached session "
        else
            tmux new-session && echo "tmux created new session"
        fi
    elif type screen >/dev/null 2>&1; then
        screen -rx || screen -D -RR
    fi
fi
