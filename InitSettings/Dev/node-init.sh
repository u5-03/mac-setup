# Node
brew install nodebrew
brew update nodebrew
nodebrew setup
export PATH=$HOME/.nodebrew/current/bin:$PATH
nodebrew install-binary stable
nodebrew use stable

export PATH="/usr/local/bin:$PATH"
export PATH=$PATH:$HOME/.nodebrew/current/bin