#!/bin/bash
dbus-launch dconf load / < ~/xed.dconf
chmod -R +x ~/.config/sway/scripts
chmod -R +x ~/.config/waybar/scripts
chmod -R +x ~/.config/wofi/windows.py
case "$(systemd-detect-virt)" in
  kvm | qemu) sed -i ~/.profile -e 's|^#\(export WLR_RENDERER_ALLOW_SOFTWARE=1\)$|\1|' ;;
esac
sed -i 's|\(exec ~/set_once.sh\)|# \1|' ~/.config/sway/config
rm ~/xed.dconf
rm ~/set_once.sh
