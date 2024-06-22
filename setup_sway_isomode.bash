#!/usr/bin/env bash
username="$1"
git clone https://github.com/EndeavourOS-Community-Editions/sway.git

cd sway
cp -R .config /home/$username/                                               
chmod -R +x /home/$username/.config/sway/scripts
chmod -R +x /home/$username/.config/waybar/scripts
chmod +x /home/$username/.config/wofi/windows.py
cp .profile /home/$username/
chown -R $username:$username /home/$username/.config
chown $username:$username /home/$username/.profile
cd ..
rm -rf sway
wget https://raw.githubusercontent.com/EndeavourOS-Community-Editions/sway/main/packages-repository.txt
pacman -S --needed --noconfirm - < packages-repository.txt
rm packages-repository.txt
systemctl enable sddm
