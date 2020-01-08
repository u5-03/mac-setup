if ! which xcversion >/dev/null; then
  echo xcode-install will be installed!
  gem install xcode-install
else
  echo xcode-install is already installed!
fi

# cat ./UserSettings/xcode-version.sh | grep -v "#" | while read line || [ -n "${line}" ];
# do
#   xcversion install $line
# done
# echo Xcode install complete!