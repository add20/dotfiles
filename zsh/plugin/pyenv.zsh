
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"

# to install pyenv into your shell as a shell function,
# enable shims and autocompletion
eval "$(pyenv init -)"

# instead to just enable shims, without shell integration
# eval "$(pyenv init --path)"
