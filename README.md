# Sway-WM Setup and Theme for EndeavourOS

**Sway EndeavourOS Community Edition**

## To Install manually

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
    
Lightdm Setup is Commented by Default

    sudo cp lightdm-gtk-greeter.conf /etc/lightdm/
    
    systemctl enable lightdm
    
    systemctl start lightdm
    
## Post install

- Keyboard layout in: `~/.config/sway/config.d/input`
- Screen settings in: `~/.config/sway/config.d/output`
- Keybings Cheatsheet: press keyboard icon in waybar

- If your experiencing issus with your cursor - edit file `~/.profile` and comment out `export WLR_NO_HARDWARE_CURSORS=1`     
 
## Get involved at our forum:
https://forum.endeavouros.com/t/sway-edition-general-conversation

## Tutorial for sway-wm settings:

 - Background handled by swaybg
 - Gtk3 theme handled by lxappearance
 - Filebrowser = Thunar
 - Default Terminal-Emulator = XFCE4-Terminal and/or Termite
 - Text-Editor = xed/nano
 - Bar = Waybar
 - Sound = Pulseaudio

Main shortcuts: ~/.config/sway/cheatsheet

[mod] key is set to the winkey (or should i call it linkey?)

 - [mod]+Return = open floating terminal (XFCE4-Terminal)
 - [mod]+(Shift)+Return = open fixed terminal (Termite)
 - [mod]+o = open Browser (firefox)
 - [mod]+n = open File Manager (thunar)
 - [mod]+d = app menu (wofi)
 - [mod]+q = close focused app [kill]
 - (Shift)+(Print-Key) = screenshot/bring up screenshot menu
 - [mod]+(Shift)+e = power-menu
 - [mod]+r = resize mode
 - [mod]+(Shift)+(Space) = float window
     - {HOLD DOWN} [mod] = drag floating window
 - [mod]+(Arrow Keys) = switch focus respectively 
 - [mod]+(Shift)+(Minus) = send to scratchpad
 - [mod]+(Minus) = cycle through scratchpad
 

## Tiling:

Is set to default for swaywm and can be changed to:

- stacking: Only the focused window in the container is displayed. You get a list of windows at the top of the container. 
   - [mod]+s (Vertical List)
   - [mod]+w (Horizontal List)
     - navigate lists with [mod]+(Arrow Keys)
   - [mod]+e = to go back to tiling
   


![sway](https://forum.endeavouros.com/uploads/default/original/3X/b/c/bc09b71d718cb09a8efd4545cc65366c5f855441.png)
![wofi](https://forum.endeavouros.com/uploads/default/original/3X/9/d/9daff7f842bd9db097e0bb9d6be5cf5b65e6baa0.jpeg)

Waybar :
![waybar](https://forum.endeavouros.com/uploads/default/original/3X/7/3/73b22b2a678c6836c3b2d15747b0ef28e064fbc2.png)

