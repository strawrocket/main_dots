#!/bin/bash
clear
figlet -f smslant "Disable DM"
echo "Hyprland recommends the start with the tty login."
echo "You can deactivate the current display manager (if exists)."
echo ""
echo "-> Do you really want to deactivate the display manager?"
while true; do
    read -p "Do you want to enable the sddm display manager and setup theme? (Yy/Nn): " yn
    case $yn in
        [Yy]*)
            if [ -f /etc/systemd/system/display-manager.service ]; then
                sudo rm /etc/systemd/system/display-manager.service
                echo "Current display manager removed."
            else
                echo "No active display manager found."
            fi
            break
            ;;
        [Nn]*)
            exit
            break
            ;;
        *) echo "Please answer yes or no." ;;
    esac
done
