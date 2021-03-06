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


mkvenv () {
  base_python=`which python$1`
  mkvirtualenv --python=$base_python $2
}

# for Visual Studio Code
code () {
    VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $*
}
