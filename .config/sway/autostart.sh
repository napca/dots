#!//usr/bin/env bash
(sleep 0.3;GTK_THEME=adw-gtk3-dark waybar) &
pipewire &
pulseaudio &
sleep 0.3; wireplumber &
sleep 0.5;(mpd; mpc clear;mpc load all; mpc random; mpc repeat; mpc shuffle; mpd-mpris) &
#sleep 0.4;(nekoray &
#firefox &
#QT_QPA_PLATFORMTHEME=gtk3 telegram-desktop) &
gsettings set $gnome-schema gtk-theme 'adw-gtk3-dark' &
gsettings set $gnome-schema icon-theme 'Papirus-Dark' &
gsettings set $gnome-schema cursor-theme 'Vimix Cursors - White' &
gsettings set $gnome-schema font-name 'JetBrains Nerd Font Mono 11' &
import-gsettings &
/usr/libexec/kdeconnectd &
(sleep 0.4;footclient -e tmux) &
