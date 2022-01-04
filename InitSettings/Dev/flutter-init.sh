# Flutter
mkdir $HOME/dev-tool
git clone https://github.com/flutter/flutter.git -b stable $HOME/dev-tool/flutter
export PATH="$PATH:$HOME/dev-tool/flutter/bin"
export PATH="$HOME/Library/Android/sdk/platform-tools:$PATH"
flutter doctor

#JAVA
# Ref: https://zenn.dev/satokazur222/articles/66568417b291d8
sudo ln -sfn $(brew --prefix)/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk