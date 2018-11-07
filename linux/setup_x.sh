#!/bin/bash

set -e

WifiName=""
Retina=0

while getopts "rw:" Opt; do
  case $Opt in
    w)
      WifiName=$OPTARG
      ;;
    r)
      Retina=1
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
cp -v ~/.ownconfigs/linux/i3config ~/.i3/config
~/.ownconfigs/linux/i3status.conf.sh $WifiName > ~/.i3status.conf
