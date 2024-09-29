# Ref: https://qiita.com/hikagami/items/560bd0b2a413ef08ad46
# Set up Zinit
sh -c "$(curl -fsSL https://git.io/zinit-install)"
source ~/.zshrc
zinit self-update
## Install font for powerlevel10k
curl -L -o ~/Downloads/MesloLGS_NF_Regular.ttf "https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf"
curl -L -o ~/Downloads/MesloLGS_NF_Bold.ttf "https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf"
curl -L -o ~/Downloads/MesloLGS_NF_Italic.ttf "https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf"
curl -L -o ~/Downloads/MesloLGS_NF_Bold_Italic.ttf "https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf"
mv ~/Downloads/MesloLGS_NF_Regular.ttf ~/Library/Fonts/
mv ~/Downloads/MesloLGS_NF_Bold.ttf ~/Library/Fonts/
mv ~/Downloads/MesloLGS_NF_Italic.ttf ~/Library/Fonts/
mv ~/Downloads/MesloLGS_NF_Bold_Italic.ttf ~/Library/Fonts/

brew install lsd
