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

mkdir -p ~/.i3
# cp -v ~/.ownconfigs/linux/xinitrc ~/.xinitrc
# cp -v ~/.ownconfigs/linux/Xdefaults ~/.Xdefaults
cp -v ~/.ownconfigs/linux/i3config ~/.i3/config
~/.ownconfigs/linux/i3status.conf.sh $WifiName > ~/.i3status.conf
