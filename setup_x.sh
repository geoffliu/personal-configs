#!/bin/zsh

set -e
CurrentPath="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

SCALING_FACTOR=1

while getopts "rt" Opt; do
  case $Opt in
    r)
      SCALING_FACTOR=2
      ;;
    t)
      SCALING_FACTOR=1.5
      ;;
    *)
      echo "Bad arg"
      exit 1
      ;;
  esac
done

export SCALING_DENSITY=$(printf %d $((96 * $SCALING_FACTOR)))
export SCALING_FACTOR

# pacman -S dmenu i3-wm i3lock i3status pamixer sxiv xautolock
# xorg-xclip xorg-xrandr xorg-xdm network-manager-applet scrot feh

# xsession
command -V xdm
command -V xrandr

# WM
command -V dmenu
command -V i3
command -V i3status
command -V kitty

mkdir -p ~/bin
cp $CurrentPath/scripts/* ~/bin

$CurrentPath/linux/xinitrc.sh > ~/.xsession
chmod +x ~/.xsession

cp -v $CurrentPath/linux/Xdefaults ~/.Xdefaults

mkdir -p ~/.config/kitty
cp -v $CurrentPath/linux/kitty.conf ~/.config/kitty

mkdir -p ~/.i3
$CurrentPath/linux/i3config.sh > ~/.i3/config
$CurrentPath/linux/i3status.sh > ~/.i3status.conf

mkdir -p ~/.config/fontconfig
cp $CurrentPath/linux/fonts.conf ~/.config/fontconfig

# Setup cron scripts
mkdir -p ~/.config/systemd/user
$CurrentPath/linux/make_cron.sh gentoo-package-check 1
$CurrentPath/linux/make_cron.sh arch-package-check 1
$CurrentPath/linux/make_cron.sh fetch-wallpaper 5

