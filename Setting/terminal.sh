# 環境変数export LANG=ja_JP.UTF-8
export KCODE=u           # KCODEにUTF-8を設定

## 色を使用出来るようにする
autoload -Uz colors
colors

## 補完機能を有効にする
autoload -Uz compinit
compinit

## cdを使わずにディレクトリを移動できる
setopt auto_cd
## $ cd - でTabを押すと、ディレクトリの履歴が見れる
setopt auto_pushd

## タブ補完時に大文字小文字を区別しない
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# Options
# 日本語ファイル名を表示可能にする
setopt print_eight_bit
# コマンドラインでも # 以降をコメントと見なす
setopt interactive_comments
# beep を無効にする
setopt no_beep

# Terminalのユーザー名を非表示にする
# PS1=$USER" "`$date`  
PROMPT=$'%n [%*] -> %% '
## PROMPT
# 現在のパスを表示(背景色を青色に設定)
RPROMPT="%{${bg[blue]}%}[%~]%{${reset_color}%}"

# PROMPT変数内で変数参照する
setopt prompt_subst
RPROMPT=$RPROMPT'${vcs_info_msg_0_}'

# vcsの表示
## vcs_infoロード
autoload -Uz vcs_info

zstyle ':vcs_info:*' enable git svn hg bzr
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' stagedstr "%F{yellow}!"
zstyle ':vcs_info:*' unstagedstr "%F{red}+"
zstyle ':vcs_info:*' formats "%F{green}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'

# プロンプト表示直前にvcs_info呼び出し(プロンプトが表示されるたびに、実行される関数)
precmd () {
    psvar=()
    LANG=en_US.UTF-8 vcs_info
    [[ -n "$vcs_info_msg_0_" ]] && psvar[1]="$vcs_info_msg_0_"
}