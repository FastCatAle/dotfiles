#!/bin/bash

selected_option=$(echo -e "Suspend\nReboot\nShutdown\nCancel" | fuzzel -d)

case $selected_option in
    "Suspend") loginctl suspend ;;
    "Reboot") loginctl reboot ;;
    "Shutdown") loginctl poweroff ;;
    "Cancel") exit ;;
    *) exit ;;
esac
