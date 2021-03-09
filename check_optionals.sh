#!/bin/zsh

command -V fcitx
command -V nm-applet
command -V pamixer
command -V sxiv
command -V scrot
command -V xclip
command -V checkupdates

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

