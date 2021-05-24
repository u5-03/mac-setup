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
# Flutter
flutterPath="$HOME/dev-tool/flutter/bin"
if [[ ! $PATH =~ $flutterPath ]]; then
  export PATH="$PATH:$flutterPath"
fi
androidSDKPAth="$HOME/Library/Android/sdk/platform-tools"
if [[ ! $PATH =~ $androidSDKPAth ]]; then
  export PATH="$androidSDKPAth:$PATH"
fi
rbenv="$HOME/.rvenv/bin"
if [[ ! $PATH =~ $rbenv ]]; then
  export PATH="$PATH:$rbenv"
fi
rbenvShims="$HOME/.rvenv/shims"
if [[ ! $PATH =~ $rbenvShims ]]; then
  export PATH="$PATH:$rbenvShims"
fi
eval "$(rbenv init -)"