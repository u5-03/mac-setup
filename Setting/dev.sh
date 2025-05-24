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
eval "$(pyenv init --path)"
# Flutter
## Ref: https://zenn.dev/aiiro/articles/6df504554d57ef
flutterPath="$HOME/fvm/default/bin"
if [[ ! $PATH =~ $flutterPath ]]; then
  export PATH="$PATH:$flutterPath"
  export PATH="$PATH":"$HOME/.pub-cache/bin"
fi
## `Unable to find bundled Java version` => Run command below.
## Ref: https://qiita.com/y-matsumoto/items/74467e528c7b2c745b87
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
export PATH=$PATH:~/Library/Android/sdk/build-tools/34.0.0

# Ref: https://qiita.com/uhooi/items/74bdc893c7a7b43f6e94#android-studio%E3%81%AB%E5%90%8C%E6%A2%B1%E3%81%95%E3%82%8C%E3%81%A6%E3%81%84%E3%82%8Bjdk%E3%81%8C%E8%A6%8B%E3%81%A4%E3%81%8B%E3%82%89%E3%81%AA%E3%81%84
export JAVA_HOME=~/Applications/Android\ Studio.app/Contents/jbr/Contents/Home
if [ -d "${JAVA_HOME}" ]; then
  export PATH="${JAVA_HOME}/bin:$PATH"
fi

# GitHubCLI
eval "$(gh completion -s zsh)"
