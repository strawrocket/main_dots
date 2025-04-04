#    ___           __
#   / _ \___  ____/ /__
#  / // / _ \/ __/  '_/
# /____/\___/\__/_/\_\
#

config="$HOME/.config/gtk-3.0/settings.ini"
if [ ! -f $HOME/.config/ml4w/settings/dock-disabled ]; then
    prefer_dark_theme="$(grep 'gtk-application-prefer-dark-theme' "$config" | sed 's/.*\s*=\s*//')"
    if [ $prefer_dark_theme == 0 ]; then
        style="style-light.css"
    else
        style="style-dark.css"
    fi
    # nwg-dock-hyprland -d -hd 10 -i 24 -w 5 -mb 0 -ml 10 -mr 10 -x -s $style -lp "start" -c  "rofi -show drun"
    nwg-dock-hyprland -hd 10 -p left -f -a start -r -x -i 18 -s $style -lp "start" -c  "rofi -show drun"
else
    echo ":: Dock disabled"
fi
