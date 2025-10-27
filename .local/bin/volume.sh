#!/usr/bin/env bash
set -e

open_pavucontrol() {
  if ! pgrep -f "pavucontrol" > /dev/null; then
    pavucontrol &
  else
    echo "Already open"
  fi
  exit 0
}

notify() {
  if [[ "$1" == "mic" ]]; then
    mic_vol=$(wpctl get-volume @DEFAULT_AUDIO_SOURCE@)
    mic_vol=${mic_vol#*: }
    mic_vol=${mic_vol%.*}${mic_vol#*.}
    notify-send -t 1500 -u low \
	  -h int:value:$mic_vol -h string:x-dunst-stack-tag:mic Microphone
  else
    vol=$(wpctl get-volume @DEFAULT_AUDIO_SINK@)
    vol=${vol#*: }
    vol=${vol%.*}${vol#*.}
    notify-send -t 1500 -u low \
	  -h int:value:$vol -h string:x-dunst-stack-tag:volume "Volume $vol"
	fi
}

volume_ctl() {
  if [[ "$1" == "up" ]]; then
    wpctl set-volume -l 1.0 @DEFAULT_AUDIO_SINK@ 5%+
  elif [[ "$1" == "down" ]]; then
    wpctl set-volume -l 1.0 @DEFAULT_AUDIO_SINK@ 5%-
  else
    wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle
  fi
  notify
}

case $1 in
	up) volume_ctl $1;;
  down) volume_ctl $1;;
	mute) volume_ctl $1;;
  mic) wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle;;
  open) open_pavucontrol;;
esac

