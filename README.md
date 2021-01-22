# SwayEOS
SwayEOS
Unoffical - To Install
1) get the dot files

2) copy files to the right directories (.config of your user):

3) copy scripts inside ~/.config/sway/scripts must be executable ! [chmod +x] them please ;)

4) install needed packages

       git clone https://github.com/OdiousImp2604/SwayEOS.git

       cd SwayEOS

       cp -R .config/* ~/.config/
       
       cp .profile ~/.profile
       
       cp .gtkrc-2.0 ~/.gtkrc-2.0

       chmod -R +x ~/.config/sway/scripts (make scripts executable)
       
       chmod -R +x ~/.config/waybar/scripts
 
       sudo pacman -S --needed --noconfirm - < packages-repository.txt
       
       systemctl enable lightdm
       
       systemctl start lightdm
  

To-Do (as of 21/1/21)

- Bar Fininshed - Done!
- Intergrate Power Menu - Done !
- Working on replicating sway's default keybindings over i3's - DONE!

Keybindings

Are sway defautls as of 7:45pm UK Time

