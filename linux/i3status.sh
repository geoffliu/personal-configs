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

order += "arch_updates"
order += "read_file packages"
order += "disk /"
order += "disk /var"
order += "disk /home"
order += "battery_level"
order += "wifi _first_"
order += "volume_status"
order += "loadavg"
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

wifi _first_ {
  format = " {ssid}|"
}

loadavg {
  format = "[\?if=1min>2  [\?color=1avg {1min}] [\?color=5avg {5min}] [\?color=15avg {15min}]]"
  thresholds = [(0, 'good'), (40, 'degraded'), (70, 'bad')]
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

arch_updates {
  refresh_interval = 21600
  format = "[\?if=total>9  {pacman}/{aur}]"
}

EOF
