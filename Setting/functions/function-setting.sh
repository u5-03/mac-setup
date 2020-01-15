if [ ! -e $HOME/mac-setup/Setting/functions/git-escape-magic ]; then
  # zshで^を使用する際に、自動でエスケープする関数
  curl  https://raw.githubusercontent.com/knu/zsh-git-escape-magic/master/git-escape-magic --output "$HOME/mac-setup/Setting/functions/git-escape-magic"
  export FPATH=$HOME/mac-setup/Setting/functions:$FPATH
fi

autoload -Uz git-escape-magic
git-escape-magic