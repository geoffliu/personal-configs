#!/bin/sh

for l in de_DE zh_CN en_US; do
  locale -a | grep -qsi "$l"
  if [ $? -eq 0 ]; then
    echo export LANG=\"$l.UTF-8\"
    echo export LC_ALL=\"$l.UTF-8\"
    break
  fi
done

if [[ "$SCALING_FACTOR" != 1 ]]; then
  cat << EOF

export QT_USE_PHYSICAL_DPI=1
export GDK_SCALE=$SCALING_FACTOR
xrandr --dpi $SCALING_DENSITY
EOF

fi

cat << EOF
fcitx5 &
adjust-screen
xautolock -locker "lock-screen" -time 10 -corners 0-00 &
redshift -l \$(location-info lat):\$(location-info lng) &
sh "$PERSONAL_CONFIG_DIR/extras/auto_commands" &
exec i3
EOF
