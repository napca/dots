#!/usr/bin/env bash
/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
swaync &
(sleep 0.6;waybar) &
sleep 0.8; kdeconnect-indicator & gnome-keyring-daemon -r -d &
sleep 1;(killall mpd;mpd; mpc clear;mpc load all; mpc random; mpc repeat; mpc shuffle; mpd-mpris) &
#sleep 0.4;(nekoray &
#firefox &
#QT_QPA_PLATFORMTHEME=gtk3 telegram-desktop) &
gsettings set org.gnome.desktop.interface gtk-theme 'WhiteSur-Dark-solid' &
gsettings set org.gnome.desktop.interface icon-theme 'Papirus-Dark' &
gsettings set org.gnome.desktop.interface cursor-theme 'Vimix Cursors - White' &
gsettings set org.gnome.desktop.interface font-name 'JetBrains Nerd Font Mono 11' &
import-gsettings &
/lib/kdeconnectd &
swayosd-server --top-margin=0.05 &
swayidle -w \
  timeout 1200 'pgrep -x swaylock || ~/.config/sway/lock.sh &' \
  timeout 1210 'if pgrep -x swaylock; then swaymsg "output * power off"; fi' \
  resume 'swaymsg "output * power on"' \
  before-sleep '~/.config/sway/lock.sh &' \
  lock '~/.config/sway/lock.sh &' &

