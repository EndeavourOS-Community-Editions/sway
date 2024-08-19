#!/bin/bash

SELECTION="$(printf "󰌾 Lock %11s(1)\n󰤄 Suspend %8s(2)\n󰍃 Log out %8s(3)\n Reboot %9s(4)\n Reboot to UEFI %1s(5)\n󰐥 Shutdown %7s(6)" | fuzzel --dmenu -a top-right -l 6 -w 22 -p "Select an option: ")"

confirm_action() {
    local action="$1"
    CONFIRMATION="$(printf "No %12s(1)\nYes %11s(2)" | fuzzel --dmenu -a top-right -l 2 -w 20 -p "$action?")"
    [[ "$CONFIRMATION" == *"Yes"* ]]
}

case $SELECTION in
    *"Lock"*)
        swaylock;;
    *"Suspend"*)
        if confirm_action "Suspend"; then
            systemctl suspend
        fi;;
    *"Log out"*)
        if confirm_action "Log out"; then
            swaymsg exit
        fi;;
    *"Reboot"*)
        if confirm_action "Reboot"; then
            systemctl reboot
        fi;;
    *"Reboot to UEFI"*)
        if confirm_action "Reboot to UEFI"; then
            systemctl reboot --firmware-setup
        fi;;
    *"Shutdown"*)
        if confirm_action "Shutdown"; then
            systemctl poweroff
        fi;;
esac
