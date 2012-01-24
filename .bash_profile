source ~/.aliases
source ~/.completions
source ~/.functions
source ~/.paths

# for MacOS
# source ~/.macos/.paths

# my setting
HISTCONTROL=ignoredups

# PS1='\u:\W\$ '
# PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '
# PS1='\w$(__git_ps1 " [%s]")\$ '
PS1='\[\033[32m\]\[\033[00m\]\[\033[34m\]\W\[\033[31m\]$(__git_ps1 " [%s]")\[\033[00m\]\$ '

