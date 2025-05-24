
# このスクリプトは zsh-config.sh から呼び出される
# Zinitプラグインをサイレントにロードする

# テーマとプラグインをサイレントモードでロード
# テーマを最初にロード
zinit ice depth=1 silent
zinit light romkatv/powerlevel10k

# その他のプラグインをロード
zinit ice silent
zinit light zdharma-continuum/fast-syntax-highlighting

zinit ice silent
zinit light zsh-users/zsh-autosuggestions

zinit ice silent
zinit light zsh-users/zsh-completions

zinit ice silent
zinit light mollifier/cd-bookmark
