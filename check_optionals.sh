#!/bin/zsh

command -V fcitx
command -V pactl
command -V sxiv
command -V scrot
command -V xclip

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

