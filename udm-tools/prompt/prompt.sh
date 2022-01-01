#!/bin/sh
#diana::snippet:udm-prompt:begin#
# This file is automatically maneged by systemd unit
# Please do not modify this file

__get_device_name(){
    grep -m 1 '^name:' /data/unifi-core/config/settings.yaml | awk -F: '{ gsub(/^[ \t]+|[ \t]+$/, "", $2); print tolower($2) }'
}

# PROMPT
export PS1="\e[38;5;9m[UDM] \e[38;5;10m\u\e[0m@\e[38;5;11m$(__get_device_name)\e[0m in \e[38;5;4m\w\e[0m\n→ "

# Aliases
alias c='clear'
alias e='exit'

#diana::snippet:udm-prompt:end#
