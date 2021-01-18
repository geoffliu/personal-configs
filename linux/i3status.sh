#!/bin/bash

cat << EOF
general {
  colors = true
  color_good = "#00b0ef"
  color_degraded = "#ff7066"
  color_bad = "#ff7066"
  interval = 5
}

order += "read_file packages"
order += "disk /"
order += "disk /home"
order += "battery 0"
order += "load"
order += "tztime local"

disk "/" {
  format = "💾 %percentage_used"
}

disk "/home" {
  format = "🏠 %percentage_used"
}

battery 0 {
  format = "%status %percentage"
  path = "/sys/class/power_supply/BAT%d/uevent"
  low_threshold = 20
  threshold_type = "percentage"
  integer_battery_capacity = true
  status_chr = "🔌"
  status_bat = "🔋"
  status_full = "💯"
}

load {
  format = "🤖 %1min %5min %15min"
  max_threshold = 3
}

tztime local {
  format = "%Y-%m-%d %A %H:%M"
}

read_file packages {
  path = "$1/linux/status_files/packages"
}

EOF
