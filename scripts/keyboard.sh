hyprctl switchxkblayout gaming-kb-gaming-kb next && 
notify-send -i /home/Bruhman5527/Documents/DOT-FILES/icons/settings.svg -h boolean:transient:true "Keyboard layout" "Your keyborad layout is now $(hyprctl devices | 
grep -A7 'gaming-kb-gaming-kb$' | 
grep 'active keymap' | 
head -1 | 
awk -F': ' '{print $2}')"
