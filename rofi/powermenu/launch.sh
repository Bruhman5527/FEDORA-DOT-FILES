#!/bin/bash

options="󰐥 Shutdown\n󰜉 Reboot\n󰤄 Suspend\n󰌾 Lock\n󰍃 Exit"

chosen=$(echo -e "$options" | rofi -dmenu -p "Power" -no-custom -config /home/Bruhman5527/Documents/DOT-FILES/rofi/powermenu/menu.rasi)

confirm() {
    echo -e "Yes\nNo" | rofi -dmenu -p "" -theme /home/Bruhman5527/Documents/DOT-FILES/rofi/powermenu/confirm.rasi -mesg "Are you sure?"
}

case "$chosen" in
    "󰐥 Shutdown")
        [ "$(confirm)" = "Yes" ] && poweroff ;;
    "󰜉 Reboot")
        [ "$(confirm)" = "Yes" ] && reboot ;;
    "󰤄 Suspend")
        [ "$(confirm)" = "Yes" ] && systemctl suspend ;;
    "󰍃 Exit")
        [ "$(confirm)" = "Yes" ] && hyprctl dispatch exit ;;
    "󰌾 Lock")
        [ "$(confirm)" = "Yes" ] && hyprlock ;;
esac