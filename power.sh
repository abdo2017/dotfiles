#!/bin/bash

# Power menu script for i3 WM using Rofi

# Options for the menu
options="Shutdown
Restart
Sleep
Logout"

# Use Rofi to display the menu and get the user's choice
chosen=$(echo -e "$options" | rofi -dmenu -p "Power Menu: ")

# Execute the chosen action
case $chosen in
    Shutdown)
        systemctl poweroff
        ;;
    Restart)
        systemctl reboot
        ;;
    Sleep)
        systemctl suspend
        ;;
    Logout)
        i3-msg exit
        ;;
    *)
        exit 0
        ;;
esac 