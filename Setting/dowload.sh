function isPrivateConfigSet() {
  if [ -e $HOME/SettingFiles/PrivateSettings/private-config.sh ]; then
    return 0
  else
    return 1
  fi
}

# GoogleDriveに保存したBetterTouchToolのライセンスファイルを指定ディレクトリに保存する。
function dlBtt() {
  if ! isPrivateConfigSet; then
    echo Could not load private config file!
    return
  fi
  savePath=$HOME/SettingFiles/BetterTouchToolsLicenceFile
  if [[ ! -e $savePath/$filename ]]; then
    mkdir -p $savePath
    curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
    curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o $savePath/${filename}
    echo Downloading licence file is complete!
  else
    echo Licence file already exist!
  fi
}