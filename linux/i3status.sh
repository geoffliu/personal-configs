#!/bin/bash

cat << EOF
general {
  output_format = "i3bar"
  colors = true
  color_good = "#00b0ef"
  color_degraded = "#ff7066"
  color_bad = "#ff7066"
  interval = 5
}

order += "read_file packages"
order += "disk /"
order += "disk /var"
order += "disk /home"
order += "battery_level"
order += "wireless _first_"
order += "volume_status"
order += "load"
order += "read_file weather"
order += "tztime local"

disk "/" {
  format = " %percentage_used"
}

disk "/var" {
  format = " %percentage_used"
}

disk "/home" {
  format = " %percentage_used"
}

battery_level {
  blocks = ""
  format = "{icon} {percent}%"
  charging_character = ""
  threshold_degraded = 20
  hide_when_full = true
}

wireless _first_ {
  format_up = "%quality"
  format_down = ""
  signal_degraded = 45
}

load {
  format = " %1min %5min %15min"
  max_threshold = 3
}

tztime local {
  format = "%m-%d %V.%a %H:%M"
}

volume_status {
  format = " {percentage}%"
  format_muted = ""
  thresholds = [(0, 'bad'), (20, 'good')]
}

read_file packages {
  path = "$(get-status-file packages)"
}

read_file weather {
  path = "$(get-status-file weather)"
}

EOF
