# source ~/.nvm/nvm.sh

# You should create NVM's working directory if it doesn't exist:
[ -d ~/.nvm ] || mkdir ~/.nvm

# Add the following to your shell profile e.g. ~/.profile or ~/.zshrc:
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# You can set $NVM_DIR to any location, but leaving it unchanged from
# /opt/homebrew/Cellar/nvm/0.40.4 will destroy any nvm-installed Node installations
# upon upgrade/reinstall.