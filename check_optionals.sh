#!/bin/zsh

command -V feh
command -V xautolock
command -V i3lock
command -V fcitx5
command -V pactl
command -V sxiv
command -V scrot
command -V flameshot
command -V xclip
command -V deskflow
command -V brightnessctl

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
#   open dyslexic
#   BitStream Vera
Fonts=(
  'Charis SIL'
  'Fira Code'
  'Noto Color Emoji'
  'DejaVu Sans'
  'WenQuanYi Micro Hei Mono'
  'WenQuanYi Micro Hei'
  'Font Awesome 7 Free'
)

echo CHECKING FOR FONTS:
for f in $Fonts; do
  echo Resolving $f
  fc-match "$f"
done

