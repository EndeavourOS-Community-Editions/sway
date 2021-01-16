#!/bin/bash
FILENAME="screenshot-`date +%F-%T`"
grim -g "$(slurp)" /home/sway/FILENAME.png
