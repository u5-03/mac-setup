# GoogleDriveに保存したBetterTouchToolのライセンスファイルを指定ディレクトリに保存する。
function dlBttLF() {
  savePath=$HOME/SettingFiles/BetterTouchToolsLicenceFile
  fileid="1Eat-T9q12QJ1lPHKszigPk4yqkwCOGvD"
  filename="yugo sugiyama.bettertouchtool"
  if [[ ! -e $savePath/$filename ]]; then
    mkdir -p $savePath
    fileid="1Eat-T9q12QJ1lPHKszigPk4yqkwCOGvD"
    filename="yugo sugiyama.bettertouchtool"
    curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
    curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o $savePath/${filename}
  else
    echo "Licence file already exist!"
  fi
}