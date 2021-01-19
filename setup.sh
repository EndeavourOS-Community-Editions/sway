#bin/sh
git clone https://github.com/OdiousImp2604/SwayEOS.git
pushd SwayEOS >/dev/null
cp -R .config /home/$NEW_USER/
cp -R .config ~/                                                    
chmod -R +x ~/.config/Sway/scripts /home/$NEW_USER/.config/Sway/scripts
chmod +x ~/home/$NEW_USER/.config/waybar/scripts/weather.sh
cp .profile ~/
cp .profile /home/$NEW_USER/
chown -R $NEW_USER:users /home/$NEW_USER/.config /home/$NEW_USER/.profile
popd >/dev/null
rm -rf SwayEOS
