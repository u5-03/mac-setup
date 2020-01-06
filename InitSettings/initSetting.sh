CurrentDirectory=`dirname $0`
cp -f CurrentDirectory/Brewfile $HOME
## Brewfileに書かれたパッケージのインストール
brew bundle

touch ~/.zshrc
echo source ~/zsh_config/zsh_config.zsh > ~/.zshrc
source ~/.zshrc
