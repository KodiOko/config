# Package Manager | Brew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Mysql client
export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"
export PATH="/opt/homebrew/opt/php@8.1/bin:$PATH"

# Terminal customization.
eval "$(starship init zsh)"
export STARSHIP_CONFIG=~/Documents/projects/config/.config/starship.toml

# Aliases
if [ -f ~/.zsh_aliases ]; then
    . ~/.zsh_aliases
fi

# LS Extended
if [ -f /opt/homebrew/Library/Taps/electrux/homebrew-ls_extended/bin/ls_extended ]; then
    export PATH="/opt/homebrew/Library/Taps/electrux/homebrew-ls_extended/bin:$PATH"
fi

# Docker
export DOCKER_DEFAULT_PLATFORM=linux/arm64

# Autocompletions
fpath=(/opt/homebrew/share/zsh/site-functions $fpath)
autoload -Uz compinit
compinit
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

# FZF init
source <(fzf --zsh)
