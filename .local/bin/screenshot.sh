#!/usr/bin/env bash

DIR="$HOME/pictures/screenshots/$(date +'%F_%H%M%S.png')"
TITLE="Screenshot taken"
SAVE="Saved to ~/pictures/screenshots"
COPY="Copied to clipboard"

case "$1" in
    save) grim $HOME/pictures/screenshots/$(date +'%F_%H%M%S.png') ;;
    copy) grim - | wl-copy ;;
    select) grim -g "$(slurp)" - | wl-copy ;;
esac

if [[ "$1" ==  "save" ]]; then
    notify-send -t 2000 -u normal \
        -h string:x-dunst-stack-tag:screenshot "$TITLE" "$SAVE"
fi

if [[ "$1" ==  "copy" ]] || [[ "$1" == "select" ]]; then
    notify-send -t 2000 -u normal \
        -h string:x-dunst-stack-tag:screenshot "$TITLE" "$COPY"
fi
