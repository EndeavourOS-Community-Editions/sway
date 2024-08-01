## unmaintained needs contributors or maintainer

* still working.. as it is fixed for the moment. joekamprad tested by installing it over the ISO script (June 2024)
* https://github.com/EndeavourOS-Community-Editions/sway/blob/main/setup_sway_isomode.bash
* [July 2024] start getting big fixes and changes from BluishHumility
  
# Sway-WM Setup and Theme for EndeavourOS

**Sway EndeavourOS Community Edition**

[![Maintenance](https://img.shields.io/maintenance/yes/2024.svg)]()

## To Install Sway

### With the EOS Installer

In the live environment, choose "Fetch your install customization file" from the Welcome app.

![Welcome-installation](https://private-user-images.githubusercontent.com/16797647/266017970-0b5fb0dc-609f-479e-9669-94b961db089d.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MjI0ODQwMDYsIm5iZiI6MTcyMjQ4MzcwNiwicGF0aCI6Ii8xNjc5NzY0Ny8yNjYwMTc5NzAtMGI1ZmIwZGMtNjA5Zi00NzllLTk2NjktOTRiOTYxZGIwODlkLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDA4MDElMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwODAxVDAzNDE0NlomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTUxZmU1OGQ2MzdkZjBiOTAwOGVhMDE3OTE4ZDgyMGUzNmZhODcxNDZlYWRmZmI1MjBjMTA2MDkyNjU4NzI2ZjUmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.3-mqDee1I2M_8TUnpsW7UJo-uZ8dwTyLAgHFpiI_7wk)

Type or paste the URL for the Sway user_commands.bash file.

    https://github.com/EndeavourOS-Community-Editions/sway/blob/main/setup_sway_isomode.bash

Proceed with the installation normally. Be sure to choose "no desktop" on the DE selection screen.

### Manually (Post-Installation)

    git clone https://github.com/EndeavourOS-Community-Editions/sway.git

    cd sway

    bash sway-install.sh
   
You can examine the contents of the script here: https://github.com/EndeavourOS-Community-Editions/sway/blob/main/sway-install.sh
    
Greetd is the default display manager
    
    systemctl enable --now greetd.service
    
## Post install

- Keyboard layout in: `~/.config/sway/config.d/input`
- Screen settings in: `~/.config/sway/config.d/output`
- Keybindings Cheatsheet: press keyboard icon in waybar

- If your experiencing issues with your cursor - edit file `~/.profile` and comment out `export WLR_NO_HARDWARE_CURSORS=1`     
 
## Get involved at our forum:
https://forum.endeavouros.com/t/sway-edition-general-conversation

## Tutorial for sway-wm settings:

 - Background handled by swaybg
 - Gtk3 theme handled by lxappearance
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

