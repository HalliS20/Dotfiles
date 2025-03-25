#!/bin/zsh
DOTFILES="$HOME/.config/Dotfiles/"
ALIASES="$DOTFILES/aliases"
PLUGINS="$DOTFILES/plugins"

# ALIASES
source "$ALIASES/bash_aliases"
source "$ALIASES/cars"
source "$ALIASES/ezgit"

if [[ "$OSTYPE" == "darwin"* ]]; then
    source "$ALIASES/macos_aliases"
elif [[ -f /etc/arch-release ]] || command -v pacman &>/dev/null; then
    source "$ALIASES/linux_aliases"
elif [[ -f /etc/debian_version ]] || command -v apt &>/dev/null; then
    source "$ALIASES/linux_aliases"
fi

# PLUGINS
source "$PLUGINS/zplug"
source "$PLUGINS/ohmyposh"

#PATHS
source "$DOTFILES/paths"
eval "$(zoxide init zsh)"
