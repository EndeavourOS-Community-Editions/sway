#!/bin/bash

# Apply xed settings
dbus-launch dconf load / < $HOME/.config/xed.dconf

# Notify user settings have been applied
notify-send -i /usr/share/icons/Qogir/48/apps/accessories-text-editor.svg "Custom xed settings have been applied. "

# Remove xed.dconf file
rm $HOME/.config/xed.dconf

# Remove xed_setup.sh from autostart config
sed -i "/# Apply xed settings with self-destructing script/,+2d" $HOME/.config/sway/config.d/autostart_applications

# Remove this script
rm $HOME/.config/sway/scripts/xed_setup.sh
