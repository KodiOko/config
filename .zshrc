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

# Autocompletions
fpath=(/opt/homebrew/share/zsh/site-functions $fpath)
autoload -Uz compinit
compinit
