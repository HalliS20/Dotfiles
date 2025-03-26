#!/bin/zsh

nvim_optimized() {
    sudo -E XDG_CONFIG_HOME=$HOME/.config \
    XDG_DATA_HOME=$HOME/.local/share \
    XDG_STATE_HOME=$HOME/.local/state \
    XDG_CACHE_HOME=$HOME/.cache \
    LUA_PATH="$HOME/.config/nvim/lua/?.lua;$HOME/.config/nvims/nvim-ultralight/lua/?/init.lua;;" \
    nvim \
    --cmd "set runtimepath^=$HOME/.config/nvims/nvim-ultralight" \
    --cmd "set runtimepath+=$HOME/.config/nvims/nvim-ultralight/after" \
    --cmd "set packpath^=$HOME/.config/nvims/nvim-ultralight" \
    --cmd "set packpath+=$HOME/.config/nvims/nvim-ultralight/after" \
    -u $HOME/.config/nvims/nvim-ultralight/init.lua \
    "$@"
}
nvim_optimized "$@"

clear && printf '\e[3J'

exec zsh

