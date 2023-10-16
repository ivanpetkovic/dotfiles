#!/usr/bin/env bash

## Copyright (C) 2020-2023 Aditya Shakya <adi1090x@gmail.com>
##
## Autostart Programs

# Kill already running process
_ps=(picom dunst ksuperkey mpd xfce-polkit xfce4-power-manager)
for _prs in "${_ps[@]}"; do
	if [[ `pidof ${_prs}` ]]; then
		killall -9 ${_prs}
	fi
done

# Setup monitors
xrandr --output DVI-D-0 --off --output DP-0 --primary --mode 2560x1440 --pos 0x0 --rotate normal --output DP-1 --off --output HDMI-0 --mode 1920x1080 --pos 2560x0 --rotate normal --output DP-2 --off --output DP-3 --off --output DP-4 --off --output DP-5 --off

# Fix cursor
xsetroot -cursor_name left_ptr

# Polkit agent
/usr/lib/xfce-polkit/xfce-polkit &

# Enable power management
xfce4-power-manager &

# Enable Super Keys For Menu
ksuperkey -e 'Super_L=Alt_L|F1' &
ksuperkey -e 'Super_R=Alt_L|F1' &

# Restore wallpaper
# hsetroot -root -cover ~/.config/i3/wallpapers/default.png
nitrogen --restore

# Lauch notification daemon
~/.config/i3/bin/i3dunst.sh

# Lauch polybar
~/.config/i3/bin/i3bar.sh

# Lauch compositor
~/.config/i3/bin/i3comp.sh

# Start mpd
exec mpd &

# sometimes needs to be rerun (only setxkbmap line). NOTE: Viber wont start while US keyboard active, so change to RS
setxkbmap -layout us,rs -variant ,latin -option grp:win_space_toggle

