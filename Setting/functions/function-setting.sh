if [ ! -e $HOME/mac-setup/Setting/functions/git-escape-magic ]; then
  # zshで^を使用する際に、自動でエスケープする関数
  curl  https://raw.githubusercontent.com/knu/zsh-git-escape-magic/master/git-escape-magic --output "$HOME/mac-setup/Setting/functions/git-escape-magic"
  export FPATH=$HOME/mac-setup/Setting/functions:$FPATH
fi

autoload -Uz git-escape-magic
# git-escape-magic

# Settings to use biometrics when running `sudo` in Terminal
function setBiometricsAuthAsTouchID() {
  echo "--Biometrics setting of terminal when use 'sudo'----------------------------"
  # Enable user write permission 
  sudo chmod u+w /etc/pam.d/
  echo "Add `auth       sufficient     pam_tid.so` to 2nd line of `/etc/pam.d/sudo`"
  sudo vi /etc/pam.d/sudo
}