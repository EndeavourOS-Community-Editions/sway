## unmaintained needs contributors or maintainer

* WIP at the moment try it and report if you want to contribute!
* https://github.com/EndeavourOS-Community-Editions/sway/blob/main/setup_sway_isomode.bash
* [July 2024] start getting big fixes and changes from BluishHumility
  
# Sway-WM Setup and Theme for EndeavourOS

**Sway EndeavourOS Community Edition**

[![Maintenance](https://img.shields.io/maintenance/yes/2024.svg)]()

## To Install Sway

### With the EOS Installer

1. In the live environment, choose "Fetch your install customization file" from the Welcome app.
2. Type or paste the URL for the Sway user_commands.bash file.
```
https://raw.githubusercontent.com/EndeavourOS-Community-Editions/sway/main/setup_sway_isomode.bash
```
![welcome_install-customization-file](https://github.com/user-attachments/assets/b4b9e882-0e53-4e11-be10-a92e5b55cefb)

3. Click <kbd> OK </kbd>, then back in the Welcome app click <kbd> Start the Installer </kbd> and proceed with an online installation. Be sure to choose "no desktop" on the DE selection screen.

![installer-no_desktop](https://github.com/user-attachments/assets/f9146bf2-e0ab-4e0a-9b6a-89ad5eed5a29)


### Manually (Post-Installation)

Alternatively, you can add Sway after the installation is complete by cloning the repo and running the `sway-install.sh` script.

    git clone https://github.com/EndeavourOS-Community-Editions/sway.git

    cd sway

    chmod +x sway-install.sh

    sudo ./sway-install.sh
    
## Post install

- Keyboard layout in: `~/.config/sway/config.d/input`
- Screen settings in: `~/.config/sway/config.d/output`
- Keybindings Cheatsheet: press keyboard icon in waybar

- If your experiencing issues with your cursor - edit file `/etc/greetd/regreet.toml` and uncomment `WLR_NO_HARDWARE_CURSORS = "1"`     
 
## Get involved at our forum:
https://forum.endeavouros.com/t/sway-edition-general-conversation

## Tutorial for sway-wm settings:

 - Background handled by swaybg
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
 - <kbd>MOD</kbd>+<kbd>D</kbd>= app menu (Fuzzel)
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
   
![sway](https://github.com/user-attachments/assets/9f4bbdac-e478-4918-bdac-da4d83cece42)

Fuzzel:
![fuzzel](https://github.com/user-attachments/assets/fa4d38ba-abcd-4cd9-af9b-4ef6f678b594)

Waybar:
![waybar](https://github.com/user-attachments/assets/6a4cc6f0-95dc-4a47-a6f9-7c5f853b9b70)

