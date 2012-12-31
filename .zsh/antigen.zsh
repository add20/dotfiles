source ~/OSS/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen-lib

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen-bundle git
antigen-bundle autojump
antigen-bundle brew
antigen-bundle gem      # completion: for gem
antigen-bundle git-flow # completion: for git-flow
antigen-bundle rvm      # completion: for rvm
# antigen-bundle encode64 # function:   encode/decode strings with base64
# antigen-bundle gas      # completion: Gas helps you manage your git authors.
# antigen-bundle coffee   # completion: for coffee script
# antigen-bundle bundler  # function, alias: for bundle exec
# antigen-bundle heroku
# antigen-bundle pip
# antigen-bundle lein
# antigen-bundle command-not-found # only for Ubuntu
antigen-bundle $HOME/dotfiles/.zsh/plugins/tmux --no-local-clone

# Syntax highlighting bundle.
antigen-bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
# antigen-theme gallois
antigen-theme $HOME/dotfiles/.zsh/themes/add20.zsh-theme --no-local-clone

# Tell antigen that you're done.
antigen-apply
