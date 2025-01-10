#!/bin/bash

# Set the directory where your wallpapers are stored
WALLPAPER_DIR="$HOME/Downloads/gruvbox-wallpapers/wallpapers/pixelart"

# Find all image files in the directory (assuming .jpg, .png, .jpeg)
WALLPAPERS=$(find "$WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.png" -o -iname "*.jpeg" \))

# If there are no wallpapers, exit
if [ -z "$WALLPAPERS" ]; then
  echo "No wallpapers found in $WALLPAPER_DIR"
  exit 1
fi

# Select a random wallpaper from the list
RANDOM_WALLPAPER=$(echo "$WALLPAPERS" | shuf -n 1)

# Set the selected wallpaper using swww
swww img "$RANDOM_WALLPAPER" --transition-fps 30 --transition-type any --transition-duration 3

