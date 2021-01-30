# SwayEOS - unofficial

## To Install

    git clone https://github.com/OdiousImp2604/SwayEOS.git

    cd SwayEOS

    bash testinstall.sh

## Post install

- Keyboard layout in: `~/.config/sway/config.d/input`
- Screen settings in: `~/.config/sway/config.d/output`
  

## To-Do (as of 24/1/21)
- Find bugs and fix
- Screenshot menu, does not center well, with with width 100
- Check if idle settings in sway config makes sense
- Make qt themeing guide 
- Write WIKI


## Tutorial for sway-wm settings:

 - Background handled by swaybg
 - Gtk3 theme handled by lxappearance
 - Filebrowser = Thunar
 - Default Terminal-Emulator = Alacritty
 - Text-Editor = geany

Main shortcuts:

[mod] key is set to the winkey (or should i call it linkey?)

 - [mod]+enter = open terminal (alacritty)
 - [mod]+o = open Browser (firefox)
 - [mod]+n = open File Manager (thunar)
 - [mod]+d = app menu (wofi)
 - [mod]+q = close focused app [kill]
 - (Shift) Print-key = screenshot

## Tiling:

Is set to default for swaywm and can be changed to:

- stacking: Only the focused window in the container is displayed. You get a list of windows at the top of the container.

- tabbed: so each new window will open fullscreen as a tab, you can change between window-tabs with mouse or shortcut: [mod]+Left focus left (left arrow key) [mod]+Right focus right (right arrow key)

## Waybar:


