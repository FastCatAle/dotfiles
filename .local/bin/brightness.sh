#!/usr/bin/env bash

case "$1" in
    +) brightnessctl set +5% - ;;
    -) brightnessctl set 5%- - ;;
esac

brightness=$(brightnessctl get)
perc=$(((brightness / 5) * 2))

notify-send -t 1500 -u low \
	-h int:value:$perc \
	-h string:x-dunst-stack-tag:brightness "Brightness $perc"
