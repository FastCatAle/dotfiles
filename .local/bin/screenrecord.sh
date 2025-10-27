#!/usr/bin/env bash
set -euo pipefail

FILE="Screencast_from_$(date +%d-%m-%Y_at_%H-%M-%S).mp4"
AUDIO_SOURCE=$(pactl list sources | grep Name | grep monitor | awk '{print $2}')

if pgrep -x "wf-recorder" &> /dev/null; then
  PID="$(pgrep -x wf-recorder)"
  kill -2 $PID
  notify-send "Screen recording stopped" "Saved to $HOME/Videos/Screencasts"
  exit 0
else  
  notify-send "Screen recording started..."
  
  wf-recorder \
  --audio=$AUDIO_SOURCE \
  --codec h264_vaapi --codec-param crf=1 --codec-param preset=ultrafast \
  --audio-codec aac \
  --device /dev/dri/renderD128 \
  --file $HOME/Videos/Screencasts/$FILE \
  &> /dev/null
fi
