# Powerline-shell
# https://qiita.com/tocomi/items/c0127c44eded54b43c11

## Install Powerline-shell
git clone https://github.com/b-ryan/powerline-shell $HOME/dev-tool/powerline-shell
cd $HOME/dev-tool/powerline-shell
sudo python setup.py install
## Install fonts
git clone https://github.com/powerline/fonts.gszit --depth=1 $HOME/dev-tool/fonts
$HOME/dev-tool/fonts/install.sh
cd $HOME/dev-tool
cd $HOME
mkdir $HOME/.config/powerline
cp $HOME/SettingFiles/Powerline-shell/config.json $HOME/.config/powerline/config.json
cp $HOME/SettingFiles/Powerline-shell/mytheme.pyc $HOME/dev-tool/powerline-shell/powerline_shell/themes/mytheme.pyc
