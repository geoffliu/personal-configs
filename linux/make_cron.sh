#!/bin/bash

cat > ~/.config/systemd/user/$1.service << EOF
[Unit]
Description=Run $1

[Service]
Type=oneshot
ExecStart=$HOME/bin/cron-$1
EOF

cat > ~/.config/systemd/user/$1.timer << EOF
[Unit]
Description=Periodically run $1

[Timer]
OnActiveSec=1min
OnUnitActiveSec=${2}min

[Install]
WantedBy=timer.target
EOF

