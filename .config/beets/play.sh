#!/bin/sh
 mpc clear> /dev/null
 mpc -h ~/.config/mpd/socket load $1> /dev/null 
 mpc repeat on > /dev/null
 mpc random on > /dev/null
 mpc play
 rm /tmp/beets/beetsplug_play/*.m3u
