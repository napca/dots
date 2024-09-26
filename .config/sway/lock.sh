#!/bin/sh
playerctl pause
swaync-client -cp
#for o in HDMI-A-2 DP-1 eDP-1
#do
#	grim -o "$o" "/tmp/$o.png"
#	corrupter "/tmp/$o.png" "/tmp/$o.png" &
#done
#wait

 gtklock --idle-hide --idle-timeout 10 -m dpms -m playerctl-module -m powerbar-module -T 4 --art-size 128 -H --show-labels -S -L '/home/napca/.config/sway/prelock.sh' --show-hidden -s ~/.config/gtklock/style.css
#pgrep -x swaylock || swaylock -k -c 101010
