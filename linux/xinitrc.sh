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

echo "export LANG=$LANG"

if [[ $Retina -eq 1 ]]; then
  cat << EOF

export QT_USE_PHYSICAL_DPI=1
export GDK_SCALE=2
xrandr --dpi 192
EOF

fi

cat << EOF
fcitx5
feh --randomize --no-fehbg --bg-fill $PERSONAL_CONFIG_DIR/etc/wallpapers
xautolock -locker "lock-screen" -time 10 -corners 0-00 &
get-status-file packages
exec i3
EOF
