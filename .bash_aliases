#!/bin/zsh

alias n='~/Dotfiles/nvim-script.sh'
alias sn='~/Dotfiles/nvim-sudo.sh'
alias rst='exec zsh'
alias ls='lsd --group-dirs first --color=auto'
alias l='lsd --group-dirs first --color=auto -1'
alias ll='lsd -l --group-dirs first --color=auto'
alias la='lsd -la --group-dirs first --color=auto'
alias ..='cd ..'
alias ...='cd ../..'

alias pip='pip3'
alias python='python3'
alias py='python3'

alias todo='~/.todo/todo-cli'
alias cl='clear'

source ~/Dotfiles/.cars
source ~/Dotfiles/.ezgit
source ~/Dotfiles/.sml
source ~/Dotfiles/.tsam

if [[ "$OSTYPE" == "darwin"* ]]; then
    source ~/Dotfiles/.macos_aliases
elif [[ -f /etc/arch-release ]] || command -v pacman &>/dev/null; then
    source ~/Dotfiles/.linux_aliases
elif [[ -f /etc/debian_version ]] || command -v apt &>/dev/null; then
    source ~/Dotfiles/.linux_aliases
fi
