pkill -9 waybar
waybar -c ~/.config/waybar/top-bar/config.jsonc -s ~/.config/waybar/top-bar/style.css & disown
waybar -c ~/.config/waybar/app-bar/config.jsonc -s ~/.config/waybar/app-bar/style.css
