#!/bin/bash
dbus-launch dconf load / < ~/xed.dconf
chmod -R +x ~/.config/sway/scripts
chmod -R +x ~/.config/waybar/scripts
chmod -R +x ~/.config/wofi/windows.py
sed -i 's|\(exec --no-startup-id ~/set_once.sh\)|# \1|' ~/.config/sway/config
rm ~/xed.dconf
rm ~/set_once.sh
