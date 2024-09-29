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