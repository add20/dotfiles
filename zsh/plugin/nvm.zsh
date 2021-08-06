# source ~/.nvm/nvm.sh

# You should create NVM's working directory if it doesn't exist:

[ -d ~/.nvm ] || mkdir ~/.nvm

# Add the following to ~/.zshrc or your desired shell
# configuration file:

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# You can set $NVM_DIR to any location, but leaving it unchanged from
# /usr/local/Cellar/nvm/0.38.0 will destroy any nvm-installed Node installations
# upon upgrade/reinstall.
