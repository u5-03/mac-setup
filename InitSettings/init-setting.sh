# CurrentDirectory=`dirname $0`
cp -f $CurrentDirectory/Brewfile $HOME
## Brewfileに書かれたパッケージのインストール
brew bundle

if [ -e ~/.zshrc ]; then
  touch ~/.zshrc
fi
git clone https://github.com/u5-03/SettingFiles.git
#PrivateConfigの読み込み
if [ -e $HOME/SettingFiles/PrivateInitSettings/private-repositories.sh ]; then
  source $HOME/SettingFiles/PrivateInitSettings/private-repositories.sh
  source $HOME/SettingFiles/PrivateInitSettings/working-repositories.sh
fi
echo source ~/mac-setup/zsh-config.sh > ~/.zshrc
source ~/.zshrc

# zshの設定
which -a zsh
sudo -- sh -c 'echo '/usr/local/bin/zsh' >> /etc/shells'
chsh -s /usr/local/bin/zsh

# Screen captureの保存先を変更
ccd

sh $HOME/mac-setup/InitSettings/Dev/index.sh