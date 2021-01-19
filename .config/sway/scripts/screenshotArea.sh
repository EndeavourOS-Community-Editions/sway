#!/bin/bash
FILENAME="screenshot-`date +%F-%T`"
grim -g "$(slurp)" $HOME/Pictures/FILENAME.png
