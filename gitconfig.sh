echo "Start setting of Git"

if [ -s ~/.gitconfig ]; then
  echo "Because there is a '~/.gitconfig' file already exits without doing anything."
  exit
fi

echo -n "Your Name: "; read  GIT_AUTHOR_NAME
echo -n "Your email: "; read  GIT_AUTHOR_EMAIL

GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"

# user
git config --global user.name "$GIT_AUTHOR_NAME"
git config --global user.email "$GIT_AUTHOR_EMAIL"
# alias
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.df diff
git config --global alias.df "diff --cached"
git config --global alias.df "diff --no-ext-diff --color-words"
git config --global alias.unstage "reset HEAD --"
git config --global alias.last "log -1 -p HEAD"
git config --global alias.stash-unapply "!git stash show -p | git apply -R"
# color
git config --global color.ui auto
# core
git config --global core.excludesfile ~/.gitignore
git config --global core.autocrlf input
# grep
git config --global grep.lineNumber true
git config --global alias.g "grep --break --heading --line-number"

echo '[tig "bind"]
  generic = g move-first-line
  generic = G move-last-line' >> ~/.gitconfig
