# Don’t clear the screen after quitting a manual page
export MANPAGER="less -X"

# HISTORY
HISTCONTROL=ignoredups
# Make some commands not show up in history
export HISTIGNORE="ls:ls *:cd:cd -:pwd;exit:date:* --help"

# Vim
export EDITOR=/Applications/MacVim.app/Contents/MacOS/Vim

# sbt option
export SBT_OPTS="-Dfile.encoding=UTF8"
