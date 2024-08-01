## unmaintained needs contributors or maintainer

* still working.. as it is fixed for the moment. joekamprad tested by installing it over the ISO script (June 2024)
* https://raw.githubusercontent.com/EndeavourOS-Community-Editions/sway/main/setup_sway_isomode.bash
* Read here on how to use it: https://github.com/EndeavourOS-Community-Editions/.github/blob/main/profile/README.md
* [July 2024] start getting big fixes and changes from BluishHumility
  
# Sway-WM Setup and Theme for EndeavourOS

**Sway EndeavourOS Community Edition**

[![Maintenance](https://img.shields.io/maintenance/yes/2024.svg)]()

## To Install Manually

    git clone https://github.com/EndeavourOS-Community-Editions/sway.git

    cd sway

    bash sway-install.sh
   
## Contained In The Script
    cp -R .config/* ~/.config/
    
    cp .profile ~/.profile
    
    cp .gtkrc-2.0 ~/.gtkrc-2.0
    
    chmod -R +x ~/.config/sway/scripts
    
    chmod -R +x ~/.config/waybar/scripts
    
    sudo pacman -Syu --needed --noconfirm - < packages-repository.txt
    
    dbus-launch dconf load / < xed.dconf
    
SDDM is the default display manager
    
    systemctl enable sddm.service
    
    systemctl start sddm.service
    
## Post install

- Keyboard layout in: `~/.config/sway/config.d/input`
- Screen settings in: `~/.config/sway/config.d/output`
- Keybindings Cheatsheet: press keyboard icon in waybar

- If your experiencing issues with your cursor - edit file `~/.profile` and comment out `export WLR_NO_HARDWARE_CURSORS=1`     
 
## Get involved at our forum:
https://forum.endeavouros.com/t/sway-edition-general-conversation

## Tutorial for sway-wm settings:

 - Background handled by swaybg
 - Gtk3 theme handled by nwg-look
 - Filebrowser = Thunar
 - Default Terminal-Emulator = Foot
 - Text-Editor = xed/nano
 - Bar = Waybar
 - Sound = Pulseaudio

Main shortcuts: `~/.config/sway/cheatsheet`


<kbd>MOD</kbd> key is set to the <kbd>WINKEY</kbd>/<kbd>LINKEY</kbd>

 - <kbd>MOD</kbd>+<kbd>Return</kbd> = open floating terminal (Foot)
 - <kbd>MOD</kbd>+<kbd>O</kbd> = open Browser (firefox)
 - <kbd>MOD</kbd>+<kbd>N</kbd> = open File Manager (thunar)
 - <kbd>MOD</kbd>+<kbd>D</kbd>= app menu (wofi)
 - <kbd>MOD</kbd>+<kbd>Q</kbd> = close focused app [kill]
 - <kbd>Shift</kbd>+<kbd>PrtSc</kbd> = screenshot/bring up screenshot menu
 - <kbd>MOD</kbd>+<kbd>SHIFT</kbd>+<kbd>E</kbd> = power-menu
 - <kbd>MOD</kbd>+<kbd>R</kbd> = resize mode
 - <kbd>MOD</kbd>+<kbd>SHIFT</kbd>+<kbd>SPACE</kbd>  = float window
     - <kbd>MOD</kbd>+<kbd>HOLD DOWN</kbd> = drag floating window
 - <kbd>MOD</kbd>+<kbd>↑ ↓ → ←</kbd>  = switch focus respectively 
 - <kbd>MOD</kbd>+<kbd>SHIFT</kbd>+<kbd>MINUS</kbd> = send to scratchpad
 - <kbd>MOD</kbd>+<kbd>MINUS</kbd> = cycle through scratchpad
 
 
 

## Tiling:

Is set to default for swaywm and can be changed to:

- stacking: Only the focused window in the container is displayed. You get a list of windows at the top of the container. 
   - <kbd>MOD</kbd>+<kbd>S</kbd> = Vertical List
   - <kbd>MOD</kbd>+<kbd>W</kbd> = Horizontal List
     - navigate lists with <kbd>MOD</kbd>+<kbd>↑ ↓ → ←</kbd> 
   - <kbd>MOD</kbd>+<kbd>E</kbd> = Back to tiling
   


![sway](https://forum.endeavouros.com/uploads/default/original/3X/b/c/bc09b71d718cb09a8efd4545cc65366c5f855441.png)
![wofi](https://forum.endeavouros.com/uploads/default/original/3X/9/d/9daff7f842bd9db097e0bb9d6be5cf5b65e6baa0.jpeg)

Waybar :
![waybar](https://forum.endeavouros.com/uploads/default/original/3X/7/3/73b22b2a678c6836c3b2d15747b0ef28e064fbc2.png)

