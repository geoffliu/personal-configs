#!/bin/bash

cat > ~/.config/systemd/user/$1.service << EOF
[Unit]
Description=Run $1

[Service]
Type=oneshot
Environment="PERSONAL_CONFIG_DIR=$PERSONAL_CONFIG_DIR"
ExecStart=$HOME/bin/cron-$1
EOF

cat > ~/.config/systemd/user/$1.timer << EOF
[Unit]
Description=Periodically run $1

[Timer]
OnActiveSec=0
OnUnitActiveSec=${2}min

[Install]
WantedBy=timers.target
EOF

