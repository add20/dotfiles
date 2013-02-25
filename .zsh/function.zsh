function c(){
  cd ~/code/"$1"
}

unalias md
# Create a new directory and enter it
function md() {
  mkdir -p "$@" && cd "$@"
}

# cat files with filename and line number
function ncat()
{
  for filename in $*
  do
    echo $filename
    cat -n $filename
    echo # new line
  done
  unset filename
}
