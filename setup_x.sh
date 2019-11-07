#!/bin/zsh

set -e

Retina=0
UseWorkman=1

while getopts "FWr" Opt; do
  case $Opt in
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

# pacman -S dmenu i3-wm i3lock i3status pamixer sxiv rxvt-unicode xorg-xautolock
# xorg-xclip xorg-xrandr xorg-xdm network-manager-applet scrot feh

command -V dmenu
command -V fc-match
command -V feh
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

cp -v ~/.ownconfigs/linux/Xdefaults ~/.Xdefaults

mkdir -p ~/.i3
if [[ $UseWorkman -eq 1 ]]; then
  ~/.ownconfigs/linux/i3config.sh y n e o > ~/.i3/config
else
  ~/.ownconfigs/linux/i3config.sh h j k l > ~/.i3/config
fi
cp ~/.ownconfigs/linux/i3status.conf ~/.i3status.conf

mkdir -p ~/.config/fontconfig
cp ~/.ownconfigs/linux/fonts.conf ~/.config/fontconfig

Fonts=(
  'Noto Sans'
  'Noto Sans Mono'
  'Noto Serif'
  'WenQuanYi Micro Hei'
  'WenQuanYi Micro Hei Mono'
  'Monofur for Powerline'
  'IBM 3270'
)

echo CHECKING FOR FONTS:
for f in $Fonts; do
  echo Resolving $f
  fc-match "$f"
done


