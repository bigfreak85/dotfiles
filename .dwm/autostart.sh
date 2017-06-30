#!/bin/bash

#Audiobell
pactl upload-sample /usr/share/sounds/freedesktop/stereo/bell.oga x11-bell &
pactl load-module module-x11-bell sample=x11-bell display=$DISPLAY &

#Notebook open or closed?
lidstatus=$(cat /proc/acpi/button/lid/LID/state)
if [[ $lidstatus == *"open"* ]]; then
  fswebcam -S 5 -q --no-banner -r 1280x720 ~/Pictures/logon/$(date +%d-%m-%Y_%T%H).jpg
fi

#Startup-Sound
mplayer "/home/bigfreak/Downloads/startupsounds/Sega Dreamcast - Boot.wav" </dev/null >/dev/null 2>&1 &

#Backgroundpicture
nitrogen --restore &

#Lock-Screen when Mouse 3 Seconds on right corner (i3lock)
if ! pgrep -x "xautolock" > /dev/null; then
xautolock -time 10 -locker /home/bigfreak/git/i3lock-fancy/lock -nowlocker /home/bigfreak/git/i3lock-fancy/lock -detectsleep -corners 000+ -cornerdelay 3 & 
fi

#XServer Rootwindow used as Statusbar
if ! pgrep -x "dwm_status.sh" > /dev/null; then
/home/bigfreak/Documents/scripts/dwm_status.sh & 
fi
#Notify Daemon
if ! pgrep -x "dunst" > /dev/null; then
dunst & 
fi
#Clipoard-Manager
if ! pgrep -x "clipmenud" > /dev/null; then
/home/bigfreak/git/clipmenu/clipmenud & 
fi
#urxvt Daemon...
if ! pgrep -x "urxvtd" > /dev/null; then
urxvtd -f
fi

