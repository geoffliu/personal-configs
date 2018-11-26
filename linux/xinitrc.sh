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
xautolock -locker "i3lock -e -c b2cefe" -time 2 &
exec i3
EOF
