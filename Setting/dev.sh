# Node
nodebrewPath=".nodebrew"
if [[ ! $PATH =~ $nodebrewPath ]]; then
  export PATH=$HOME/.nodebrew/current/bin:$PATH
fi
# Python
pythonPath=".pyenv"
if [[ ! $PATH =~ $pythonPath ]]; then
  export PYENV_ROOT="$HOME/.pyenv"
  export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init -)"
fi