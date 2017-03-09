#!/bin/bash
fswebcam -S 5 -q --no-banner -r 1280x720 ~/Pictures/logon/$(date +%d-%m-%Y_%T%H).jpg
nitrogen --restore & 
xautolock -time 10 -locker /home/bigfreak/git/i3lock-fancy/lock -nowlocker /home/bigfreak/git/i3lock-fancy/lock -detectsleep -corners 000+ -cornerdelay 3 & 
/home/bigfreak/Documents/scripts/dwm_status.sh & 
dunst & 
/home/bigfreak/git/clipmenu/clipmenud & 

