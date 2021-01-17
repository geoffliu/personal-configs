#!/bin/sh


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

if [[ $Retina -eq 1 ]]; then
  cat << EOF

export GDK_SCALE=2
xrandr --dpi 192
EOF

fi

cat << EOF
while true; do
  check-packages-for-update &
  sleep 600
done &
fcitx
feh --randomize --no-fehbg --bg-fill ~/.ownconfigs/wallpapers
xautolock -locker "lock-screen" -time 10 -corners 000- &
exec i3
EOF
