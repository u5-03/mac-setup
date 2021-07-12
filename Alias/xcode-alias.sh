# Xcode関連のalias
alias deletederiveddata='rm -rf ~/Library/Developer/Xcode/DerivedData/*'
alias ddd='deletederiveddata'
alias xcv='xcversion'
alias xo='xcodeOpen'
alias rkb='replaceKeybindingFile'
alias sds='setDeviceSupport'
alias xsl='xcrun simctl list'
alias spg='swift package generate-xcodeproj'

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

## Specify the iOS and Xcode version, download the DeviceSupport file and set it in the corresponding version Xcode ($1: iOS version, $2: Xcode version path)
function setDeviceSupport() {
  # null check of arg1
  if [ -z "$1" ]; then
    echo "arg1(iOS version number) is required! e.g. 14.6"; return
  fi
  # null check of arg2
  if [ -z "$2" ]; then
    echo "arg2(xcode version number) is required! e.g. 12.5"; return
  fi
  which svn
  echo "Clone $1 DeviceSupport zip from https://github.com/filsv/iPhoneOSDeviceSupport"
  svn export https://github.com/filsv/iPhoneOSDeviceSupport/trunk/$1.zip
  unzip $1.zip
  mv -f ./$1 /Applications/Xcode$2.app/Contents/Developer/Platforms/iPhoneOS.platform/DeviceSupport/
  rm -f $1.zip
  rm -f -r __MACOSX
  echo "Set $1 Device Support file to Xcode$2!"
}
