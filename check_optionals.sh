#!/bin/zsh

command -V fcitx
command -V pactl
command -V sxiv
command -V scrot
command -V xclip

echo
echo Checking Python ephem library
python -c 'import ephem'
echo

# TODO: other fonts to try:
# Coding fonts:
#   mononoki
#   lilex
#
# Reading fonts:
#   Gentium
#   open dyslexic
#   BitStream Vera
Fonts=(
  'Noto Sans'
  'Noto Sans Mono'
  'Noto Serif'
  'Noto Color Emoji'
  'Fira Code'
  'WenQuanYi Micro Hei'
  'WenQuanYi Micro Hei Mono'
)

echo CHECKING FOR FONTS:
for f in $Fonts; do
  echo Resolving $f
  fc-match "$f"
done

