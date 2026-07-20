#!/bin/bash

# Wrapper script that monitors mediaplayer.py and restarts it if it exits
# This prevents waybar from crashing when media stops

python3 ~/.config/waybar/mediaplayer.py 2>/dev/null
