#!/usr/bin/env bash
set -eu

case "$1" in
    up) brightnessctl set +5% - ;;
    down) brightnessctl set 5%- - ;;
esac

BRIGHTNESS=$(brightnessctl get)
PERCENT=$(((BRIGHTNESS / 5) * 2))

notify-send -t 1500 -u low \
	-h int:value:$PERCENT \
	-h string:x-dunst-stack-tag:brightness "Brightness" "$PERCENT"
