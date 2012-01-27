for file in ~/.bash/.{aliases,prompt,exports,extra,functions}; do
  [ -r "$file" ] && source "$file"
done
unset file
