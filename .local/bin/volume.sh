#!/usr/bin/env bash

case $1 in
	+) wpctl set-volume -l 1.0 @DEFAULT_AUDIO_SINK@ 5%+ ;;
  -) wpctl set-volume -l 1.0 @DEFAULT_AUDIO_SINK@ 5%- ;;
	mute) wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle ;;
  mic) wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle ;;
esac

if [[ "$1" == "mic" ]]; then
    mic_vol=$(wpctl get-volume @DEFAULT_AUDIO_SOURCE@)
    mic_vol=${mic_vol#*: }
    mic_vol=${mic_vol%.*}${mic_vol#*.}

    notify-send -t 1500 -u low \
	    -h int:value:$mic_vol \
	    -h string:x-dunst-stack-tag:mic Microphone
else
    vol=$(wpctl get-volume @DEFAULT_AUDIO_SINK@)
    vol=${vol#*: }
    vol=${vol%.*}${vol#*.}

    notify-send -t 1500 -u low \
	    -h int:value:$vol \
	    -h string:x-dunst-stack-tag:volume "Volume $vol"
fi
