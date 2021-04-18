#!/bin/bash

if [ -f /tmp/new_username.txt ]
then
    NEW_USER=$(cat /tmp/new_username.txt)
else
    NEW_USER=$(cat /tmp/$chroot_path/etc/passwd | grep "/home" |cut -d: -f1 |head -1)
fi

git clone https://github.com/EndeavourOS-Community-Editions/sway.git
cd sway
cp -R .config /home/$NEW_USER/                                               
chmod -R +x /home/$NEW_USER/.config/sway/scripts
chmod -R +x /home/$NEW_USER/.config/waybar/scripts
chmod +x /home/$NEW_USER/.config/wofi/windows.py
cp .profile /home/$NEW_USER/
chown -R $NEW_USER:$NEW_USER /home/$NEW_USER/.config
chown $NEW_USER:$NEW_USER /home/$NEW_USER/.profile
cd ..
rm -rf sway
