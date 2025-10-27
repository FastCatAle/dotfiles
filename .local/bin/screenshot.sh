#!/usr/bin/env bash
set -euo pipefail

FILE="Screenshot_from_$(date +%d-%m-%Y_at_%H-%M-%S).png"
OUTPUT="${HOME}/Pictures/Screenshots/${FILE}"
TITLE="Screenshot taken"
SAVE="Saved to ~/Pictures/Screenshots"
COPY="Copied to clipboard"

grim_save() {
    grim $OUTPUT || exit 1
    if [[ -e "$OUTPUT" ]]; then
        notify-send -t 2000 -u low -i $OUTPUT \
        -h string:x-dunst-stack-tag:screenshot \
        "$TITLE" "$SAVE"
    fi
}

grim_copy() {
    grim - | wl-copy || exit 1
    notify-send -t 2000 -u low \
    -h string:x-dunst-stack-tag:screenshot \
    "$TITLE" "$COPY"
}

grim_select() {
    grim -g "$(slurp)" - | wl-copy || exit 1
    notify-send -t 2000 -u low \
    -h string:x-dunst-stack-tag:screenshot \
    "$TITLE" "$COPY"
}

case "$1" in
    save) grim_save;;
    copy) grim_copy;;
    select) grim_select;;
esac

