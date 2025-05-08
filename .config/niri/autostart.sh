#!/usr/bin/env bash
/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
swaync &
(
    sleep 0.6
    GTK_THEME=adw-gtk3-dark waybar
) &
sleep 0.8
kdeconnect-indicator &
gnome-keyring-daemon -r -d &
gnome-calendar --gapplication-service &
gnome-clocks --gapplication-service &
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
#sleep 0.4;(nekoray &
#firefox &
#QT_QPA_PLATFORMTHEME=gtk3 telegram-desktop) &
gsettings set org.gnome.desktop.interface gtk-theme 'adw-gtk3' &
gsettings set org.gnome.desktop.interface icon-theme 'Papirus' &
gsettings set org.gnome.desktop.interface cursor-theme 'elementary' &
import-gsettings &
/lib/kdeconnectd &
GTK_THEME=adw-gtk3-dark swayosd-server --top-margin=0.05 &
swayidle -w \
    timeout 1200 'pgrep -x swaylock || ~/.config/sway/lock.sh &' \
    timeout 1210 'if pgrep -x swaylock; then swaymsg "output * power off"; fi' \
    resume 'swaymsg "output * power on"' \
    before-sleep 'niri msg action do-screen-transition & ~/.config/sway/lock.sh ; sleep 0.9' \
    lock 'niri msg action do-screen-transition; ~/.config/sway/lock.sh ' &
