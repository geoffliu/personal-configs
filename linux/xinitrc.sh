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

echo 'export LANG=zh_CN.UTF-8'

if [[ $Retina -eq 1 ]]; then
  cat << EOF

export GDK_SCALE=2
xrandr --dpi 192
EOF

fi

cat << EOF
fcitx
feh --randomize --no-fehbg --bg-fill $PERSONAL_CONFIG_DIR/etc/wallpapers
xautolock -locker "lock-screen" -time 3 -corners 0-00 &
get-status-file packages
get-status-file mercury
exec i3
EOF
