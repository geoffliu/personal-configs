#!/bin/bash

Left=y
Right=o
Up=e
Down=n

Mod="Mod1"
SMod="Mod4"

cat << EOF

font pango:monospace 8

floating_modifier $Mod
focus_wrapping workspace

bindsym $Mod+Return exec kitty
bindsym $Mod+d exec run_command
bindsym $Mod+j exec special-chars
bindsym $Mod+Shift+l exec lock-screen
bindsym --release Mod4+Control+Shift+4 exec grab-screen

bindsym $Mod+q kill

bindsym XF86MonBrightnessUp exec xbacklight -inc 10
bindsym XF86MonBrightnessDown exec xbacklight -dec 10
bindsym XF86AudioRaiseVolume exec media-control up
bindsym XF86AudioLowerVolume exec media-control down
bindsym XF86AudioMute exec media-control mute
bindsym XF86AudioMicMute exec media-control mutemic

bindsym $Mod+$Left focus left
bindsym $Mod+$Down focus down
bindsym $Mod+$Up focus up
bindsym $Mod+$Right focus right

bindsym $SMod+$Left move left
bindsym $SMod+$Down move down
bindsym $SMod+$Up move up
bindsym $SMod+$Right move right

bindsym $Mod+f fullscreen

bindsym $Mod+l layout toggle tabbed splith
# bindsym $Mod+t layout tabbed
# bindsym $Mod+e layout toggle split
# bindsym $Mod+v split vertical
# bindsym $Mod+o split horizontal

# toggle tiling / floating
bindsym $SMod+space floating toggle
bindsym $Mod+space focus mode_toggle

# switch to workspace
bindsym $Mod+1 workspace 1:
bindsym $Mod+2 workspace 2:
bindsym $Mod+3 workspace 3:
bindsym $Mod+4 workspace 4:

# move focused container to workspace
bindsym $SMod+1 move container to workspace 1:
bindsym $SMod+2 move container to workspace 2:
bindsym $SMod+3 move container to workspace 3:
bindsym $SMod+4 move container to workspace 4:

bindsym $SMod+backslash move workspace to output right

bindsym $SMod+grave move scratchpad
bindsym $Mod+grave scratchpad show

bindsym $Mod+Shift+q exec "i3-nagbar -t warning -m 'Do you really want to exit i3?' -B 'Yes' 'i3-msg exit'"

bar {
  i3bar_command i3bar -t
  status_command py3status
  strip_workspace_numbers yes
  colors {
    separator #7d7d7d
    background #141414
    statusline #00b0ef
    focused_workspace #00b0ef #141414 #00b0ef #e22395
    active_workspace #141414 #141414 #00b0ef #e22395
    inactive_workspace #141414 #141414 #7d7d7d #7d7d7d
    urgent_workspace #ff7066 #141414 #ff7066 #95b944
  }
}

client.focused #00b0ef #00b0ef #141414 #ff7066
client.focused_inactive #141414 #141414 #00b0ef #472b2a
client.unfocused #141414 #141414 #7d7d7d #141414
client.urgent #ff7066 #ff7066 #141414 #ff7066

hide_edge_borders both
workspace_layout tabbed
EOF
