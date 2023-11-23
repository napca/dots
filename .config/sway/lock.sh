#!/bin/sh
#for o in HDMI-A-2 DP-1 eDP-1
#do
#	grim -o "$o" "/tmp/$o.png"
#	corrupter "/tmp/$o.png" "/tmp/$o.png" &
#done
#wait
exec gtklock -m playerctl-module -m powerbar-module -m userinfo-module -T 4 --art-size 128 -H --show-labels -S -L '/home/napca/.config/sway/prelock.sh' --horizontal-layout --show-hidden -s ~/.config/gtklock/style.css "$@"
