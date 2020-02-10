# Node
brew install nodebrew
brew update nodebrew
nodebrew setup
export PATH=$HOME/.nodebrew/current/bin:$PATH
nodebrew install-binary stable
nodebrew use stable

npm install ionic -g
npm install cordova -g

# Python
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"