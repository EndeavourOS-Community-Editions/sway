#!/bin/bash

SELECTION="$(printf "1 - Lock\n2 - Suspend\n3 - Log out\n4 - Reboot\n5 - Reboot to UEFI\n6 - Shutdown" | fuzzel --dmenu -a top-right -l 6 -w 20 -p "Select an option: ")"

confirm_action() {
    local action="$1"
    CONFIRMATION="$(printf "No\nYes" | fuzzel --dmenu -a top-right -l 2 -w 20 -p "$action?")"
    [ "$CONFIRMATION" = "Yes" ]
}

case $SELECTION in
    *"Lock")
        swaylock;;
    *"Suspend")
        if confirm_action "Suspend"; then
            systemctl suspend
        fi;;
    *"Log out")
        if confirm_action "Log out"; then
            swaymsg exit
        fi;;
    *"Reboot")
        if confirm_action "Reboot"; then
            systemctl reboot
        fi;;
    *"Reboot to UEFI")
        if confirm_action "Reboot to UEFI"; then
            systemctl reboot --firmware-setup
        fi;;
    *"Shutdown")
        if confirm_action "Shutdown"; then
            systemctl poweroff
        fi;;
esac
