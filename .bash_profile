source ~/dotfiles/.common/.aliases
source ~/dotfiles/.common/.exports
source ~/dotfiles/.common/.functions
source ~/dotfiles/.common/.paths

for file in ~/dotfiles/.bash/.{aliases,prompt,extra}; do
  [ -r "$file" ] && source "$file"
done
unset file
