#!/bin/sh
/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
swaync &
(
    sleep 0.6
    waybar
) &
kdeconnect-indicator &
/lib/xdg-desktop-portal-wlr -r &
gnome-keyring-daemon -r -d &
blueman-applet &
nm-applet &
sleep 1
(
    killall mpd
    mpd
    mpc clear
    mpc load all
    mpc random
    mpc repeat
    mpc shuffle
    mpd-mpris
) &
sleep 1.3
swayosd-server --top-margin=0.05 &
#sleep 0.4;(nekoray &
#firefox &
#QT_QPA_PLATFORMTHEME=gtk3 telegram-desktop) &
gsettings set org.gnome.desktop.interface gtk-theme 'WhiteSur-Dark-solid' &
gsettings set org.gnome.desktop.interface icon-theme 'Papirus-Dark' &
gsettings set org.gnome.desktop.interface cursor-theme 'elemenary' &
gsettings set org.gnome.desktop.interface font-name 'JetBrains Nerd Font Mono 11' &
import-gsettings &
/lib/kdeconnectd &
sway-audio-idle-inhibit &
swaykbdd & 
swayidle -w \
    timeout 1200 'pgrep -x swaylock || ~/.config/sway/lock.sh &' \
    timeout 1210 'if pgrep -x swaylock; then swaymsg "output * power off"; fi' \
    resume 'swaymsg "output * power on"' \
    before-sleep '~/.config/sway/lock.sh' \
    lock '~/.config/sway/lock.sh ' &
