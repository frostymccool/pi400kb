#!/bin/bash
# Basic example pi400kb hook
# This script is given the argument 1 for grabbed, 0 for ungrabbed.
# May requires keyboard firmware update -> sudo rpi-keyboard-fw-update
# echo none > /sys/class/leds/led0/trigger
# rpi-keyboard-config list-effects
case $1 in
    0) # Ungrabbed
        # echo 0 > /sys/class/leds/led0/brightness
       # rpi-keyboard-config effect 6 # Breathing
        rpi-keyboard-config effect 15 --speed 50 # Cycle Up Down
        for i in 194 133; do 
                rpi-keyboard-config brightness $i
        done
        rpi-keyboard-config effect 0
        rpi-keyboard-config brightness 255
        ;;
    1) # Grabbed
        # echo 1 > /sys/class/leds/led0/brightness
        rpi-keyboard-config effect 21 # Dual Beacon
        rpi-keyboard-config brightness 255
      #  sleep 0.5
        rpi-keyboard-config effect 29 # Typing Heatmap
      #  rpi-keyboard-config effect 31 # Solid Reactive Simple
      #  rpi-keyboard-config effect 36 # Solid Reactive Multicross
      #  rpi-keyboard-config effect 37 # Solid Reactive Nexus
      #  rpi-keyboard-config effect 40 # Solid Reactive MultiSplash
        ;;
esac

