#!/usr/bin/env bash

NEW_WALL=$(find $HOME/.local/share/backgrounds/ -type f | shuf -n 1)

hyprctl hyprpaper preload "$NEW_WALL"
hyprctl hyprpaper wallpaper "eDP-1, $NEW_WALL"
