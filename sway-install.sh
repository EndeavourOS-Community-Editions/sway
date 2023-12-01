#!/bin/bash

# Easy setup for testing

cp -R .config/* ~/.config/
cp .profile ~/.profile
cp .gtkrc-2.0 ~/.gtkrc-2.0
chmod -R +x ~/.config/sway/scripts
chmod -R +x ~/.config/waybar/scripts

# Insert `source ~/.profile` after the line that defines SDDM_USER_SHELL in wayland-session
sudo sed -ie '/^SDDM_USER_SHELL/a source ~\/.profile' /usr/share/sddm/scripts/wayland-session

sudo pacman -Syu --needed --noconfirm - < packages-repository.txt
dbus-launch dconf load / < xed.dconf
