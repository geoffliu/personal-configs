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

for l in de_DE zh_CN en_US; do
  locale -a | grep -qsi "$l"
  if [ $? -eq 0 ]; then
    echo export LANG=\"$l.UTF-8\"
    echo export LC_ALL=\"$l.UTF-8\"
    break
  fi
done

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
