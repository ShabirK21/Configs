#!/bin/bash

swayidle -w \
                timeout 300 'gtklock -d -c ~/.config/gtklock/config.ini' \
                timeout 360 'hyprctl dispatch dpms off' \
                     resume 'hyprctl dispatch dpms on' \
                before-sleep 'gtklock -d -c ~/.config/gtklock/config.ini'
