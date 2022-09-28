#PrivateConfigの読み込み
if [ -e $HOME/SettingFiles/PrivateSettings/private-config.sh ]; then
    source $HOME/SettingFiles/PrivateSettings/private-config.sh
fi

#分割している設定ファイルの読み込み
# DIRECTORY=`dirname $0`
DIRECTORY=$HOME/mac-setup
# ## Aliasの設定
source $DIRECTORY/Alias/index.sh
# ## 設定ファイル系の設定
source $DIRECTORY/Setting/index.sh

## 重複したPATHを削除
typeset -U PATH
