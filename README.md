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

       chmod -R +x ~/.config/sway/scripts (make scripts executable)
       
       chmod -R +x ~/.config/waybar/scripts
 
 Install Needed Packages
 
      sudo pacman -S --needed - < packages-repository.txt
      
  Also please install "wlogout" available in the AUR  (No longer needed!)  

To-Do (as of 20/1/21)

- Bar is finished just need to clean up the config
- Intergrate Power Menu
- Hmmm, I can't think of anything else? 
- Working on replicating sway's default keybindings over i3's

Keybindings

Everything is the same as the i3 (for now!) , there is not yet a reference file (working on it)

One thing that changed : To launch wofi is is super+D , I recommend you look through the config for sway has some extra features which I added.

eg: - A scratchpad 
