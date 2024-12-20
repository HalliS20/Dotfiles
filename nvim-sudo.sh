#!/bin/zsh

nvim_optimized() {
    sudo -E XDG_CONFIG_HOME=/home/hallitst/.config \
    XDG_DATA_HOME=/home/hallitst/.local/share \
    XDG_STATE_HOME=/home/hallitst/.local/state \
    XDG_CACHE_HOME=/home/hallitst/.cache \
    LUA_PATH="/home/hallitst/.config/nvim/lua/?.lua;/home/hallitst/.config/nvim/lua/?/init.lua;;" \
    nvim \
    --cmd "set runtimepath^=/home/hallitst/.config/nvim" \
    --cmd "set runtimepath+=/home/hallitst/.config/nvim/after" \
    --cmd "set packpath^=/home/hallitst/.config/nvim" \
    --cmd "set packpath+=/home/hallitst/.config/nvim/after" \
    -u /home/hallitst/.config/nvim/init.lua \
    "$@"
}
nvim_optimized "$@"

clear && printf '\e[3J'

exec zsh


