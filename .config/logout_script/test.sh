#!/usr/bin/env bash

question=$(echo "Lock|Logout|Reboot|Shutdown" | rofi -sep "|" \
    -dmenu -i -p 'System: ' "" -width 20 -hide-scrollbar \
    -eh 1 -line-padding 4 -padding 20 -lines 4 -color-enabled)

case $question in
    *Lock)
        i3lock -i ~/Pictures/Wallpapers/884373.png
        ;;
    *Logout)
        #command -v gnome-session-quit 2>/dev/null 2>&1 || command -v session-logout >/dev/null 2>&1
        i3 exit
        ;;
    *Reboot)
        systemctl reboot
        ;;
    *Shutdown)
        systemctl poweroff
        ;;
    *)
        exit 0  # do nothing on wrong response
        ;;
esac
