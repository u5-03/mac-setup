function command_exists {
  command -v "$1" > /dev/null;
}

#
# Install homebrew.
#
if ! command_exists brew ; then
  echo " --------- Homebrew ----------"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  brew doctor
  brew -v

  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/r/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
  echo " ------------ Homebrew END ------------"
fi

#
# Install git
#
if ! command_exists git ; then
  echo " ------------ Git ------------"
  brew install git
  git --version
  echo " ------------ Git END ------------"
fi

#
# mac-auto-setup.git
#
echo " ---- mac-setup -----"
git clone https://github.com/u5-03/mac-setup.git
echo " ------------ mac-setup END ------------"
