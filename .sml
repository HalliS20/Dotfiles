#!/bin/zsh
use() {
    if [ -z "$1" ]; then
       ~/../../usr/local/smlnj/bin/sml
    else
        ~/../../usr/local/smlnj/bin/sml $1
    fi
}
