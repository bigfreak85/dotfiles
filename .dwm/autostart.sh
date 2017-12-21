#!/bin/bash

#java Fenster korrekt darstellen
export _JAVA_AWT_WM_NONREPARENTING=1
#Bildschirme anordnen...
xrandr --output eDP1 --pos 0x0
xrandr --output DP3-2-1-1 --pos 0x0
xrandr --output DP3-2-1-2 --pos 1920x0 --primary
xrandr --output DP3-2-2 --pos 3840x0s
#Audiobell
pactl upload-sample /usr/share/sounds/freedesktop/stereo/bell.oga x11-bell &
pactl load-module module-x11-bell sample=x11-bell display=$DISPLAY &

#Notebook open or closed?
lidstatus=$(cat /proc/acpi/button/lid/LID/state)
if [[ $lidstatus == *"open"* ]]; then
  fswebcam -S 5 -q --no-banner -r 1280x720 ~/Pictures/logon/$(date +%d-%m-%Y_%T%H).jpg
fi

#Backgroundpicture
xowner=$(who | grep '(:0)' | awk 'BEGIN { FS = "[ \t\n]+" } { print $1}')

Anzahl=`sudo DISPLAY=:0.0 -u $xowner xrandr | grep -c -w "connected"`
if [ "$Anzahl" == "4" ]; then
  #nitrogen --set-zoom /home/bigfreak/Pictures/bg/5760x1200/Berg.jpg &
  #nitrogen --set-zoom /home/bigfreak/Pictures/bg/5760x1200/wueste1.jpg &
  nitrogen --set-scaled /home/bigfreak/Pictures/bg/5760x1200/n2_kleiner.jpg &
else
  4kdown
  nitrogen --set-centered /home/bigfreak/Pictures/1920x1200/real/Bild_1296\(1920x1200\).jpg
# nitrogen --set-centered /home/bigfreak/Pictures/1920x1200/real/Bild_1704\(1920x1200\).jpg 
 #nitrogen --set-centered /home/bigfreak/Pictures/bg/people_ignore.jpg &
fi

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

#Startup-Sound
mplayer "/home/bigfreak/Downloads/startupsounds/Sega Dreamcast - Boot.wav" </dev/null >/dev/null 2>&1 &
