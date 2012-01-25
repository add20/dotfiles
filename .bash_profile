for file in ~/.{aliases,bash_prompt,completions,exports,extra,functions,paths}; do
  [ -r "$file" ] && source "$file"
done
unset file

# for MacOS
# source ~/.macos/.paths

