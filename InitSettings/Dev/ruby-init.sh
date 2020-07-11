rbenv="$HOME/.rvenv/shims"
if [[ ! $PATH =~ $rbenv ]]; then
  export PATH="$PATH:$rbenv"
  eval "$(rbenv init -)"
fi
rbenv install