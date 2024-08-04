#!/bin/bash

# Define the lengths for each column
ws_length=2
app_id_length=14
name_length=50

# Fetch the data from swaymsg and format it
formatted_output=$(swaymsg -t get_tree | jq -r --arg ws_length "$ws_length" --arg app_id_length "$app_id_length" --arg name_length "$name_length" '
  def lpad($len; $char):
    if (.|length) > $len then $char * ($len - (.|length)) +.[:$len-1] + "\u2026" else $char * ($len - (.|length)) +. end;
  def rpad($len; $char):
    if (.|length) > $len then.[:$len-1] + "\u2026" else. + $char * ($len - (.|length)) end;
..
    | objects
    | select(.type == "workspace") as $ws
    |..
    | objects
    | select(has("app_id"))
    | (if.focused then "*" else " " end) as $asterisk
    | "\($asterisk)[\($ws.name | lpad($ws_length | tonumber; " "))]\((.app_id // "xwayland") | lpad($app_id_length | tonumber; " ")): \(.name | rpad($name_length | tonumber; " ")) (\(.id))"
')

# Launch fuzzel with the formatted output
row=$(echo "$formatted_output" | fuzzel --dmenu --width=80 --lines=12)

# Get the container ID from the selection and focus the container
if [ -n "$row" ]; then
    winid="${row##*(}"
    winid="${winid%%)*}"
    swaymsg "[con_id=$winid] focus"
fi
