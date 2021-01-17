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

command -V checkupdates

mkdir -p ~/bin
cp ~/.ownconfigs/scripts/* ~/bin

mkdir -p "$CurrentPath/linux/status_files"

if [[ $Retina -eq 1 ]]; then
  ~/.ownconfigs/linux/xinitrc.sh -r > ~/.xsession
else
  ~/.ownconfigs/linux/xinitrc.sh > ~/.xsession
fi
chmod +x ~/.xsession

cp -v ~/.ownconfigs/linux/Xdefaults ~/.Xdefaults

mkdir -p ~/.i3
~/.ownconfigs/linux/i3config.sh > ~/.i3/config
~/.ownconfigs/linux/i3status.sh $CurrentPath > ~/.i3status.conf

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


