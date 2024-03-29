# finickyの設定ファイルをコピーする
# ref: https://github.com/johnste/finicky#installation
cp -f ./InitSettings/.finicky.js $HOME
## Brewfileに書かれたパッケージのインストール
brew bundle --file=./InitSettings/Brewfile

if [ -e ~/.zshrc ]; then
  touch ~/.zshrc
fi
# 個人用の設定リポジトリの取得
echo "--Setting of private config repository---------------------"
git clone https://github.com/u5-03/SettingFiles.git $HOME/SettingFiles
# PrivateConfigの読み込み
if [ -e $HOME/SettingFiles/PrivateInitSettings/private-repositories.sh ]; then
  source $HOME/SettingFiles/PrivateInitSettings/private-repositories.sh
  source $HOME/SettingFiles/PrivateInitSettings/working-repositories.sh
fi
echo source ~/mac-setup/zsh-config.sh > ~/.zshrc
source ~/.zshrc

# zshの設定
echo "--Setting of zsh------------------------------------------"
which -a zsh
sudo -- sh -c 'echo '/usr/local/bin/zsh' >> /etc/shells'
chsh -s /bin/zsh

# Screen captureの保存先を変更
ccd

# 各種開発ツールの設定
sh $HOME/mac-setup/InitSettings/Dev/index.sh

# Terminalでsudo実行時に、生体認証を使用する設定
setBiometricsAuthAsTouchID