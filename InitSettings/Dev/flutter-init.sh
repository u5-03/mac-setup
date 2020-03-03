# Flutter
mkdir $HOME/dev-tool
git clone https://github.com/flutter/flutter.git -b stable $HOME/dev-tool/flutter
export PATH="$PATH:$HOME/dev-tool/flutter/bin"
export PATH="$HOME/Library/Android/sdk/platform-tools:$PATH"
flutter doctor