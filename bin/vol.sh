#!/bin/sh

case $1 in 
	+) wpctl set-volume @DEFAULT_SINK@ 5%+ ;;
	-) wpctl set-volume @DEFAULT_SINK@ 5%- ;; 
	mute) wpctl set-mute @DEFAULT_SINK@ toggle ;;
esac

vol=$(wpctl get-volume @DEFAULT_SINK@)
vol=${vol#*: }
vol=${vol%.*}${vol#*.}

notify-send -t 1500 -u low \
	-h int:value:$vol \
	-h string:x-dunst-stack-tag:volume Volume
