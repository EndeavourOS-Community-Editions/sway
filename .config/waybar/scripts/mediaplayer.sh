#!/bin/bash

echo '{"text": "'$(playerctl metadata title)'", "alt": "'$(playerctl status)'", "tooltip": "'$(playerctl metadata --format "{{ playerName }} : {{ artist }} - {{ title }}")'", "class": "'$(playerctl status)'" }'
