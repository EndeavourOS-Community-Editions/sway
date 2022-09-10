#!/bin/bash
 
entries="Active Screen Output Area Window"
 
selected=$(printf '%s\n' $entries | wofi --style=$HOME/.config/wofi/style.widgets.css --conf=$HOME/.config/wofi/config.screenshot | awk '{print tolower($1)}')
 
case $selected in
  active)
    /usr/share/sway/scripts/grimshot --notify save active  
    /usr/share/sway/scripts/grimshot copy active;;         
  screen)
    /usr/share/sway/scripts/grimshot --notify save screen  
    /usr/share/sway/scripts/grimshot copy screen;;
  output)
    /usr/share/sway/scripts/grimshot --notify save output  
    /usr/share/sway/scripts/grimshot copy output;;
  area)
    /usr/share/sway/scripts/grimshot --notify save area  
    /usr/share/sway/scripts/grimshot copy area;;  
  window)
    /usr/share/sway/scripts/grimshot --notify save window  
    /usr/share/sway/scripts/grimshot copy window;;
esac
