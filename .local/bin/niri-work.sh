#!/usr/bin/env bash
set -euo pipefail

check_workspace() {
  current_workspace=$(niri msg workspaces | awk '$1 == "*" {print $2}')
  echo "$current_workspace"

  while true; do
    new_workspace=$(niri msg workspaces | awk '$1 == "*" {print $2}')
    if [[ $current_workspace != $new_workspace ]]; then
      current_workspace=$new_workspace
      echo "$current_workspace"
    fi
  done
}

print_help() {
  echo "Usage: niri-work.sh [OPTION]"
  echo "--current: Continously prints current workspace"
}

case "$1" in
  --current) check_workspace ;;
  *) print_help ;;
esac

#workspaces=$(niri msg workspaces | grep -c '[1-9]$')

#echo "Open workspaces:"
#for (( i = 1; i <= $workspaces; i++ )); do
#  echo "${i}"
#done
