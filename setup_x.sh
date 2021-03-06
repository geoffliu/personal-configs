#!/bin/zsh

set -e
CurrentPath="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

Retina=0

while getopts "r" Opt; do
  case $Opt in
    r)
      Retina=1
      ;;
    *)
      echo "Bad arg"
      exit 1
      ;;
  esac
done

# pacman -S dmenu i3-wm i3lock i3status pamixer sxiv xautolock
# xorg-xclip xorg-xrandr xorg-xdm network-manager-applet scrot feh

# xsession
command -V feh
command -V xautolock
command -V xdm
command -V xrandr

# WM
command -V dmenu
command -V i3
command -V i3lock
command -V i3status

command -V fc-match

mkdir -p ~/bin
cp $CurrentPath/scripts/* ~/bin

mkdir -p "$CurrentPath/linux/status_files"

if [[ $Retina -eq 1 ]]; then
  $CurrentPath/linux/xinitrc.sh -r > ~/.xsession
else
  $CurrentPath/linux/xinitrc.sh > ~/.xsession
fi
chmod +x ~/.xsession

cp -v $CurrentPath/linux/Xdefaults ~/.Xdefaults

mkdir -p ~/.config/kitty
cp -v $CurrentPath/linux/kitty.conf ~/.config/kitty

mkdir -p ~/.i3
$CurrentPath/linux/i3config.sh > ~/.i3/config
$CurrentPath/linux/i3status.sh $CurrentPath > ~/.i3status.conf

mkdir -p ~/.config/fontconfig
cp $CurrentPath/linux/fonts.conf ~/.config/fontconfig

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

