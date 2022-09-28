# Node
nodebrewPath=".nodebrew"
if [[ ! $PATH =~ $nodebrewPath ]]; then
  export PATH=$HOME/.nodebrew/current/bin:$PATH
fi
# Python
pythonPath=".pyenv"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/shims:$PATH"
eval "$(pyenv init -)"
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
# Android
ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME:$ANDROID_HOME/emulator:$ANDROID_HOME/tools/:$ANDROID_HOME/platform-tools
export JAVA_HOME="/Applications/Android Studio.app/Contents/jre/Contents/Home"