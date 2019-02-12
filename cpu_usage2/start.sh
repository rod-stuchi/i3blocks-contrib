#! /bin/bash

case "$BLOCK_BUTTON" in
    2) konsole -e htop ;;
esac

#REFRESH_TIME=1
export LABEL=⏳
export WARN_PERCENT=50
export CRIT_PERCENT=80
export DECIMALS=1
# ./cpu_usage2
~/.config/i3/i3blocks-contrib/cpu_usage2/cpu_usage2
