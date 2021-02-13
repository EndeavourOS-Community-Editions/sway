swaymsg -t get_tree |
	jq -r '.nodes[].nodes[] | if .nodes then [recurse(.nodes[])] else [] end + .floating_nodes | .[] | select(.nodes==[]) | ((.id | tostring) + "" + .name)' |
	wofi -c ~/.config/wofi/menu -s ~/.config/wofi/style.css --show dmenu --lines 4 | {
	read -r id name
	swaymsg "[con_id=$id]" focused
}
