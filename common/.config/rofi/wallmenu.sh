#! /bin/bash

# define wallpapers directory
WALL_DIR="$HOME/dotfiles/wallpapers"

# list the pictures
SELECTED=$(ls -1 "$WALL_DIR" | rofi -dmenu -i -p "Select Wallpaper:" -theme "theme.rasi")

# check selected wallpaper and create full path
if [ -n "$SELECTED" ]; then
    FULL_PATH="$WALL_DIR/$SELECTED"

# kill all swaybg instances
    killall swaybg 2>/dev/null

# apply the wallpaper
    swaybg -i "$FULL_PATH" -m fill &
fi
