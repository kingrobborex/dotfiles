#!/usr/bin/env bash

## Desktop backgound (Will be image later on possibly
xsetroot -solid '#101010' &

## Set safe level of volume
pactl set-sink-volume 0 '20%' &

## Disable beep
xset -b &

## Set keyboard
setxkbmap -option grp:alt_shift_toggle gb,us &

## Screensaver... blank screen.
xset dpms 300 600 900 &

## Set LCD brightness
xbacklight -set 90 &

## Clipboard manager
LC_ALL=C parcellite &

## OSD
dunst &
