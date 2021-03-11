#!/bin/bash

mkdir -p ~/.config/systemd/user
cp ~/.ownconfigs/linux/systemd-cron/*.{service,timer} ~/.config/systemd/user
