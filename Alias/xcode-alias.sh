# Xcode関連のalias
alias deletederiveddata='rm -rf ~/Library/Developer/Xcode/DerivedData/*'
alias ddd='deletederiveddata'
alias xcv='xcversion'
alias xo='xcodeOpen'
alias rkb='replaceKeybindingFile'

## xcodeのバージョンを指定して、プロジェクトを開く($1: Xcodeのバージョン, $2: .xcodeproj/xcworkspace のパス)
function xcodeOpen() {
  # arg1/arg2のnullチェック
  if [ ! -n "$1" -o -z "$2" ]; then
    echo "arg1(xcode version number) and arg2(xcodeproj file path) are required!"; return
  fi
  # arg1の数値判定
  expr "$1 + 1" > /dev/null 2>&1
  if [ ! $? -lt 2 ]; then
    echo arg1 must be xcode version number!; return
  fi
  #arg1のバージョンのXcodeがアプリケーションフォルダにあるかどうかの判定
  XcodePath=/Applications/Xcode$1.app
  if [ ! -e $XcodePath ]; then
    echo Xcode$1.app does not exist in Applications directory!; return
  fi
  #arg2のパスに.xcodeproj/xcworkspaceがあるかどうかの判定
  if [ ! -e $2 ]; then
    echo "The path: $2 is not valid!"; return
  fi
  FileExtension=${2##*.}
  #拡張子がXcodeで開くことができるものかの判定
  if [ $FileExtension = "xcodeproj" -o $FileExtension = "xcworkspace" ]; then
    open -a $XcodePath $2
  else
    echo "$2 cannot be opend in Xcode!";
  fi
}

## xcodeのバージョンを指定して、KeyBindingFileをカスタムのものに置き換える($1: Xcodeのバージョン, $2: IDETextKeyBindingSet.plistのパス)
function replaceKeybindingFile() {
  # arg1のnullチェック
  if [ ! -n "$1" ]; then
    echo "arg1(xcode version number) is required!"; return
  fi
  # arg1の数値判定
  expr "$1 + 1" > /dev/null 2>&1
  if [ ! $? -lt 2 ]; then
    echo arg1 must be xcode version number!; return
  fi
  #arg1のバージョンのXcodeがアプリケーションフォルダにあるかどうかの判定
  XcodePath=/Applications/Xcode$1.app
  if [ ! -e $XcodePath ]; then
    echo Xcode$1.app does not exist in Applications directory!; return
  fi
  KeyBindingFilePath=""
  PrivateKeyBindingFilePath=$HOME/SettingFiles/Xcode/XcodekeyBinding/IDETextKeyBindingSet.plist
  if [ -n "$2" ] && [ -e $2 ] && [ `basename $2` = IDETextKeyBindingSet.plist ]; then
      KeyBindingFilePath=$2
  elif [ -e $PrivateKeyBindingFilePath ]; then
    KeyBindingFilePath=$PrivateKeyBindingFilePath
    echo Default file: $HOME/SettingFiles/Xcode/XcodekeyBinding/IDETextKeyBindingSet.plist will be used!
  else
    echo "arg2(`$KeyBindingFilePath`) is invalid!"; return
  fi
  XcodeKeyBindingFilePath="/Applications/Xcode$1.app/Contents/Frameworks/IDEKit.framework/Versions/A/Resources/IDETextKeyBindingSet.plist"
  cp -f $KeyBindingFilePath $XcodeKeyBindingFilePath
  echo "keybinding file of Xcode$1.app was replaced!"
}