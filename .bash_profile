for file in ~/.{aliases,bash_prompt,exports,extra,functions}; do
  [ -r "$file" ] && source "$file"
done
unset file
