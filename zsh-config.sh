#PrivateConfigの読み込み
if [ -e $HOME/SettingFiles/PrivateSettings/private-config.sh ]; then
    source $HOME/SettingFiles/PrivateSettings/private-config.sh
fi

#分割している設定ファイルの読み込み
# DIRECTORY=`dirname $0`
DIRECTORY=$HOME/mac-setup
## Aliasの設定
source $DIRECTORY/Alias/index.sh
## 設定ファイル系の設定
source $DIRECTORY/Setting/index.sh


#add-zsh-hook precmd _update_vcs_info_msg
# PROMPT="%{${fg[green]}%}%n%{${reset_color}%}@%F{blue}localhost%f:%1(v|%F{red}%1v%f|) $ "
# RPROMPT='[%F{green}%d%f]'