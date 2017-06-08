#!/bin/bash
#Audiobell
pactl upload-sample /usr/share/sounds/freedesktop/stereo/bell.oga x11-bell &
pactl load-module module-x11-bell sample=x11-bell display=$DISPLAY &
lidstatus=$(cat /proc/acpi/button/lid/LID/state)
if [[ $lidstatus == *"open"* ]]; then
  fswebcam -S 5 -q --no-banner -r 1280x720 ~/Pictures/logon/$(date +%d-%m-%Y_%T%H).jpg
fi
mplayer "/home/bigfreak/Downloads/startupsounds/Sega Dreamcast - Boot.wav" </dev/null >/dev/null 2>&1 &
nitrogen --restore & 
xautolock -time 10 -locker /home/bigfreak/git/i3lock-fancy/lock -nowlocker /home/bigfreak/git/i3lock-fancy/lock -detectsleep -corners 000+ -cornerdelay 3 & 
/home/bigfreak/Documents/scripts/dwm_status.sh & 
dunst & 
/home/bigfreak/git/clipmenu/clipmenud & 

