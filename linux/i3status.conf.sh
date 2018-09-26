#!/bin/bash

cat << EOF
general {
  colors = true
  interval = 5
}

order += "disk /"
order += "disk /home"
order += "wireless $1"
order += "battery 0"
order += "load"
order += "cpu_usage"
order += "tztime local"

wireless $1 {
  format_up = "W: (%essid %quality) %ip"
  format_down = "W: down"
}

disk "/" {
  format = "/ %used/%total"
}

disk "/home" {
  format = "/home %used/%total"
}

battery 0 {
  format = "%status %percentage %remaining"
  path = "/sys/class/power_supply/BAT%d/uevent"
  low_threshold = 20
}

load {
  format = "Load: %1min %5min %15min"
}

cpu_usage {
  format = "CPU: %usage"
}

tztime local {
  format = "%Y-%m-%d %H:%M:%S"
}

EOF
