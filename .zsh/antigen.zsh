source ~/OSS/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen-lib

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen-bundle git
antigen-bundle autojump
# antigen-bundle heroku
# antigen-bundle pip
# antigen-bundle lein
# antigen-bundle command-not-found

# Syntax highlighting bundle.
antigen-bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
# antigen-theme gallois
antigen-theme $HOME/dotfiles/.zsh/themes/add20.zsh-theme --no-local-clone

# Tell antigen that you're done.
antigen-apply
