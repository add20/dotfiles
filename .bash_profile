source ~/.common/.aliases
source ~/.common/.exports
source ~/.common/.functions
source ~/.common/.paths

for file in ~/.bash/.{aliases,prompt,extra}; do
  [ -r "$file" ] && source "$file"
done
unset file
