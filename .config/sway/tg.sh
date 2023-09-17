#!/bin/bash
QT_QPA_PLATFORM=wayland-egl XDG_CURRENT_DESKTOP=GNOME telegram-desktop &
sleep 600; killall telegram-desktop
