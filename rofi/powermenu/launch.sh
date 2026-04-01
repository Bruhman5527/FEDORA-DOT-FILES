#!/bin/bash

options="󰐥\n󰜉\n󰤄\n󰍃\n󰌾"

chosen=$(echo -e "$options" | rofi -dmenu -p "Power" -config /home/Bruhman5527/Documents/DOT-FILES/rofi/powermenu/menu.rasi)

confirm() {
    echo -e "Yes\nNo" | rofi -dmenu -p "" -theme /home/Bruhman5527/Documents/DOT-FILES/rofi/powermenu/confirm.rasi -mesg "Are you sure?"
}

case "$chosen" in
    "󰐥")
        [ "$(confirm)" = "Yes" ] && poweroff ;;
    "󰜉")
        [ "$(confirm)" = "Yes" ] && reboot ;;
    "󰤄")
        [ "$(confirm)" = "Yes" ] && systemctl suspend ;;
    "󰍃")
        [ "$(confirm)" = "Yes" ] && hyprctl dispatch exit ;;
    "󰌾")
        [ "$(confirm)" = "Yes" ] && hyprlock ;;
esac