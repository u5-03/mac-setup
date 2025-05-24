# このファイルはzshの設定の起点となるファイルです
# 各カテゴリの設定ファイルを呼び出します

#PrivateConfigの読み込み
if [ -e $HOME/SettingFiles/PrivateSettings/private-config.sh ]; then
    source $HOME/SettingFiles/PrivateSettings/private-config.sh
fi

# 設定ファイルの基本ディレクトリ
DIRECTORY=$HOME/mac-setup

# 出力リダイレクトを使用して、zsh初期化中のコンソール出力を抑制
{
  # ## ターミナル関連の設定を最初に読み込む（Powerlevel10k, Zinitの初期化を含む）
  source $DIRECTORY/Setting/terminal.sh

  # ## Aliasの設定
  source $DIRECTORY/Alias/index.sh

  # ## 他の設定ファイル系の設定
  source $DIRECTORY/Setting/index.sh

  # ## Zinitプラグインのロード（ターミナル設定の後に実行）
  source $DIRECTORY/InitSettings/Dev/zinit-setup.sh

  # ## Powerlevel10kの設定ファイルを読み込み (最後に)
  [[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
} >/dev/null 2>&1

## 重複したPATHを削除
typeset -U PATH
