#!/bin/bash

set -e

Retina=0
UseWorkman=1
SetFonts=1

while getopts "FWr" Opt; do
  case $Opt in
    r)
      Retina=1
      ;;
    W)
      UseWorkman=0
      ;;
    F)
      SetFonts=0
      ;;
    *)
      echo "Bad arg"
      exit 1
      ;;
  esac
done

command -V autorandr
command -V dmenu
command -V i3
command -V i3lock
command -V i3status
command -V pamixer
command -V sxiv
command -V urxvt
command -V xautolock
command -V xclip
command -V xrandr

if [[ $Retina -eq 1 ]]; then
  ~/.ownconfigs/linux/xinitrc.sh -r > ~/.xinitrc
else
  ~/.ownconfigs/linux/xinitrc.sh > ~/.xinitrc
fi

if [[ $SetFonts -eq 1 ]]; then
  cp -v ~/.ownconfigs/linux/Xdefaults ~/.Xdefaults
else
  tail -n +2 ~/.ownconfigs/linux/Xdefaults > ~/.Xdefaults
fi

mkdir -p ~/.i3
if [[ $UseWorkman -eq 1 ]]; then
  ~/.ownconfigs/linux/i3config.sh y n e o > ~/.i3/config
else
  ~/.ownconfigs/linux/i3config.sh h j k l > ~/.i3/config
fi
cp ~/.ownconfigs/linux/i3status.conf ~/.i3status.conf
