#!/bin/bash

LOC="$1"
# HTML encode string as %20
LOCATION=$(sed -e "s/ /%20/g" <<<"$LOC")
content=$(curl -sS "https://thisdavej.azurewebsites.net/api/weather/current?loc=NewYork&deg=C")
ICON=$(curl -s 'https://wttr.in/?format=1' | sed 's/[+0-9a-cA-Z°-]//g' )
# echo $ICON
TEMP=$(echo $content | jq -r '. | "\(.temperature)°\(.degType)"' | sed 's/"//g')
TOOLTIP=$(echo $content | jq -r '. | "\(.temperature)°\(.degType)\n\(.skytext)"' | sed 's/"//g')
CLASS=$(echo $content | jq .skytext)
echo '{"text": "'$TEMP'", "tooltip": "'$ICON $TOOLTIP $LOC'", "class": '$CLASS' }'



