#!/usr/bin/env bash

start() {
	if ! pgrep -x "$1" > /dev/null; then
		"$@" &
	fi
}

# Bar
start eww --restart open bar

# Polkit
start /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1

# Network Manager applet
start nm-applet

# wlsunset
start wlsunset -l 8.9 -L -79.7 -t 4700

# Dunst
#start dunst

# Wallpaper
#start swaybg -m fill -i $HOME/Pictures/backgrounds/Japan_street_1.jpg
