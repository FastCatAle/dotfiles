#!/usr/bin/env bash

start() {
	if ! pgrep -x "$1" &> /dev/null; then
		"$@" &
	fi
}

# EWW Bar
start eww --restart open top-bar

# Polkit
start /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1

# Network Manager applet
start nm-applet

# Night Light
start wlsunset -l 8.9 -L -79.7 -t 4700

# Notification Daemon
start mako

# Wallpaper
start swaybg -m fill -i $HOME/Pictures/Backgrounds/winter_lake.jxl

