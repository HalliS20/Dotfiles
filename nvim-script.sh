#!/bin/zsh

nvim_optimized() {
    NVIM_MAX_MEM_PATTERN=5000 nvim -n -i NONE \
    --cmd "set viminfo=\"!,\'1000,<50,s10,h\"" \
    --cmd "set nobackup" \
    --cmd "set updatetime=300" \
    --cmd "set tabpagemax=10" \
    "$@"
}

nvim_optimized "$@"

clear && printf '\e[3J'

exec zsh


