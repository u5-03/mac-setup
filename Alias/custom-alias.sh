# custom-alias
alias sz='source ~/.zshrc'
alias opcd='open `pwd`'
alias nb='nodebrew'
alias sed='gsed'
alias paths="echo $PATH | tr ':' '\n'"

# Wifi設定alias
alias wfe='sudo networksetup -setairportpower en0 on'
alias wfd='sudo networksetup -setairportpower en0 off'
alias cwf='connectWifi'
function connectWifi() {
  sudo networksetup -setairportnetwork en0 $1 $2
}

##「悪質なソフトウェアかどうかをAppleで確認できないため、このソフトウェアを開けません。」のエラー時に、全てのアプリケーション実行を許可する(application-force-install)
alias afi='sudo spctl --master-disable'
alias afid='sudo spctl --master-enable'

## TerminalからMacをシャットダウンする
alias shutdown='sudo shutdown -h now'

##screenCaptureの保存先の変更
function ccd() {
  DIR=$HOME/Pictures/Captures
  if [ -n "$1" ] && [ -e $1 ]; then
    DIR=$1
  else
    if [ ! -d $DIR ]; then
      mkdir $DIR
    fi
  fi
  defaults write com.apple.screencapture location $DIR
  killall SystemUIServer
  echo Screen captures will be saved in $DIR!
}