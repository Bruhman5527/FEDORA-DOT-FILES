rm  -rf  ~/.config/kitty/*
cp ./kitty/* ~/.config/kitty/

rm -rf ~/.config/waybar/*
cp -rf ./waybar/* ~/.config/waybar/
pkill -9 waybar
waybar -c ~/.config/waybar/top-bar/config.jsonc -s ~/.config/waybar/top-bar/style.css & disown

rm -rf ~/.config/rofi/*
cp -rf ./rofi/* ~/.config/rofi/

mkdir ~/Documents/SCRIPTS
cp -rf ./scripts/* ~/Documents/SCRIPTS

rm -rf ~/.config/hypr/*
cp -rf ./hypr/* ~/.config/hypr/
hyprctl reload

mkdir ~/Pictures/ICONS
cp -rf ./icons/* ~/Pictures/ICONS

rm -rf ~/.config/swaync/*
cp -rf ./swaync/* ~/.config/swaync/
pkill -9 swaync & swaync & disown
swaync-client --reload-config & disown

