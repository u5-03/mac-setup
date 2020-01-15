CurrentDirectory=`dirname $0`
cp -f $CurrentDirectory/Brewfile $HOME
## Brewfileに書かれたパッケージのインストール
brew bundle

if [ -e ~/.zshrc ]; then
  touch ~/.zshrc
fi
git clone https://github.com/u5-03/SettingFiles.git
echo source ~/mac-setup/zsh-config.sh > ~/.zshrc
source ~/.zshrc

# zshの設定
which -a zsh
sudo -- sh -c 'echo '/usr/local/bin/zsh' >> /etc/shells'
chsh -s /usr/local/bin/zsh

# Screen captureの保存先を変更
ccd

#Pathを通す
export PATH="/usr/local/bin:$PATH"
export PATH=$PATH:$HOME/.nodebrew/current/bin
