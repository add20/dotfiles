# Don’t clear the screen after quitting a manual page
export MANPAGER="less -X"

# HISTORY
HISTCONTROL=ignoredups
# Make some commands not show up in history
export HISTIGNORE="ls:ls *:cd:cd -:pwd;exit:date:* --help"

# Vim
if [[ $OSTYPE == "darwin*" ]]; then
  export EDITOR=/Applications/MacVim.app/Contents/MacOS/Vim
else
  export EDITOR=vim
fi

# sbt option
export SBT_OPTS="-Dfile.encoding=UTF8"

# virtualenv for Python
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
