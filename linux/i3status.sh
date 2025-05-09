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
order += "disk /"
order += "disk /home"
order += "disk /var"
order += "disk /opt"
order += "battery_level"
order += "wifi _first_"
order += "volume_status"
order += "backlight"
order += "loadavg"
order += "tztime local"

disk "/" {
  format = ""
  low_threshold = 30
  format_below_threshold = " %percentage_used"
}

disk "/var" {
  format = ""
  low_threshold = 30
  format_below_threshold = " %percentage_used"
}

disk "/opt" {
  format = ""
  low_threshold = 30
  format_below_threshold = " %percentage_used"
}

disk "/home" {
  format = ""
  low_threshold = 30
  format_below_threshold = " %percentage_used"
}

battery_level {
  blocks = ""
  format = "[\?if=percent<98 {icon} {percent}%]"
  charging_character = ""
  threshold_degraded = 20
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

arch_updates {
  cache_timeout = 21600
  format = "[\?if=total>9  {pacman}/{aur}]"
}

backlight {
  brightness_delta = 10
  brightness_minimal = 10
  format = " {level}%"
}

EOF
