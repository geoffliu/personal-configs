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

# pacman -S dmenu i3-wm i3lock i3status pamixer sxiv rxvt-unicode xorg-xautolock
# xorg-xclip xorg-xrandr xorg-xdm network-manager-applet scrot

command -V dmenu
command -V i3
command -V i3lock
command -V i3status
command -V nm-applet
command -V pamixer
command -V scrot
command -V sxiv
command -V urxvt
command -V xautolock
command -V xclip
command -V xdm
command -V xrandr

if [[ $Retina -eq 1 ]]; then
  ~/.ownconfigs/linux/xinitrc.sh -r > ~/.xsession
else
  ~/.ownconfigs/linux/xinitrc.sh > ~/.xsession
fi
chmod +x ~/.xsession

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
