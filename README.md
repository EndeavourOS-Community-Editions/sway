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
 
 Install Needed Packages
 
      sudo pacman -S --needed - < packages-repository.txt
      
  Also please install "wlogout" available in the AUR    

To-Do

Maninly I want to work on the bar - everything else is working fine (I think)

Keybindings

Everything is the same as the i3, there is not yet a reference file (working on it)

One thing that changed : To launch wofi is is super+D , I recommend you look through the config for sway has some extra features which I added
