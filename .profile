#!/bin/sh

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CURRENT_DESKTOP=niri
export XDG_SESSION_DESKTOP=niri

export TERMINAL=foot
export EDITOR=vim

export PATH=$PATH:$HOME/.local/bin
export GOPATH=$HOME/go
#export PATH=$PATH:/usr/local/go/bin

#
#[ "$(tty)" = /dev/tty1 ] && {
#	slstatus -s | dbus-run-session dwl
#}
#
