# 環境変数export LANG=ja_JP.UTF-8
# export KCODE=u           # KCODEにUTF-8を設定

# ## 色を使用出来るようにする
# autoload -Uz colors
# colors

# ## 補完機能を有効にする
# autoload -Uz compinit
# compinit

# ## cdを使わずにディレクトリを移動できる
# setopt auto_cd
# ## $ cd - でTabを押すと、ディレクトリの履歴が見れる
# setopt auto_pushd

# ## タブ補完時に大文字小文字を区別しない
# zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# # Options
# # 日本語ファイル名を表示可能にする
# setopt print_eight_bit
# # コマンドラインでも # 以降をコメントと見なす
# setopt interactive_comments
# # beep を無効にする
# setopt no_beep
# # rm *で確認を求める機能を無効化する
# setopt RM_STAR_SILENT

# # # Terminalのユーザー名を非表示にする
# # PROMPT=$'%n [%*] -> %% '
# # # 現在のパスを表示(文字を青色に設定)
# # RPROMPT="%{${fg[blue]}%}[%~]%{${reset_color}%}"

# # https://qiita.com/tocomi/items/c0127c44eded54b43c11
# function powerline_precmd() {
#     PS1="$(powerline-shell --shell zsh $?)
#     $"
# }

# function install_powerline_precmd() {
#   for s in "${precmd_functions[@]}"; do
#     if [ "$s" = "powerline_precmd" ]; then
#       return
#     fi
#   done
#   precmd_functions+=(powerline_precmd)
# }

# Command history file
HISTFILE=~/.zsh_history
# Number of commands to remember in memory
export HISTSIZE=10000
# Number of commands to save in the history file
export SAVEHIST=100000
# Case-insensitive matching for completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
# Correct command spelling
setopt correct
# Display completion candidates in a packed list
setopt list_packed
## Share history with other zsh sessions
setopt inc_append_history
setopt share_history
## Change directories without using 'cd' if path is entered
setopt AUTO_CD
# Select completion candidates with arrow keys
zstyle ':completion:*:default' menu select=1
# Treat '/' as a word separator
autoload -Uz select-word-style
select-word-style bash
WORDCHARS='.-'
# Don't show duplicate commands in history
setopt hist_ignore_all_dups
# Remove older duplicates when saving commands to history
setopt hist_save_no_dups
# Record timestamps for commands in the history file
setopt extended_history
# Expire duplicate entries first when history exceeds HISTSIZE
setopt hist_expire_dups_first
# Treat anything after # as a comment on the command line
setopt interactive_comments
# Change the color used by LSD (only directories are changed)
export LS_COLORS="di=36"
# Automatically change directories if the entered string is recognized as a path
setopt AUTO_CD

export SHELL="/otp/homebrew/bin/zsh"

# Ref: https://qiita.com/hikagami/items/560bd0b2a413ef08ad46
zinit light romkatv/powerlevel10k
ZSH_THEME="powerlevel10k/powerlevel10k"

autoload -Uz compinit
compinit

zinit light zdharma-continuum/fast-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions
zinit light mollifier/cd-bookmark

alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'
