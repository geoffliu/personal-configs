#!/bin/bash

set -e

NetworkName=""
Retina=0
UseWorkman=1

while getopts "Wrn:" Opt; do
  case $Opt in
    n)
      NetworkName=$OPTARG
      ;;
    r)
      Retina=1
      ;;
    W)
      UseWorkman=0
      ;;
    *)
      echo "Bad arg"
      exit 1
      ;;
  esac
done

command -V urxvt
command -V xrandr
command -V i3
command -V i3status
command -V i3lock
command -V dmenu
command -V xautolock

if [[ $Retina -eq 1 ]]; then
  ~/.ownconfigs/linux/xinitrc.sh -r > ~/.xinitrc
else
  ~/.ownconfigs/linux/xinitrc.sh > ~/.xinitrc
fi

# cp -v ~/.ownconfigs/linux/Xdefaults ~/.Xdefaults

mkdir -p ~/.i3
if [[ $UseWorkman -eq 1 ]]; then
  ~/.ownconfigs/linux/i3config.sh y n e o > ~/.i3/config
else
  ~/.ownconfigs/linux/i3config.sh h j k l > ~/.i3/config
fi
~/.ownconfigs/linux/i3status.conf.sh $NetworkName > ~/.i3status.conf
