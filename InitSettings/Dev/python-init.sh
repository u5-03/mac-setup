# https://zenn.dev/kenghaya/articles/9f07914156fab5

version=3.10.6
pyenv install $version
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"

pyenv global $version

python --version