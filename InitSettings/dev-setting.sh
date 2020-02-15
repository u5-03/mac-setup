# Node
brew install nodebrew
brew update nodebrew
nodebrew setup
export PATH=$HOME/.nodebrew/current/bin:$PATH
nodebrew install-binary stable
nodebrew use stable

npm install ionic -g
npm install cordova -g

# Flutter
mkdir $HOME/dev-tool
git clone https://github.com/flutter/flutter.git -b stable $HOME/dev-tool/flutter
export PATH="$PATH:$HOME/dev-tool/flutter/bin"
export PATH="$HOME/Library/Android/sdk/platform-tools:$PATH"
flutter doctor

# Pods
sudo gem install cocoapods