#!/bin/bash

Left=$1
Right=$4
Up=$3
Down=$2

Mod="Mod1"
SMod="Mod4"

cat << EOF

font pango:DejaVu Sans Mono 8

floating_modifier $Mod

bindsym $Mod+Return exec urxvt
bindsym $Mod+d exec run_command
bindsym $Mod+Shift+l exec lock-screen
bindsym --release Mod4+Control+Shift+4 exec grab-screen

bindsym $Mod+w kill

bindsym XF86AudioRaiseVolume exec media-control up
bindsym XF86AudioLowerVolume exec media-control down
bindsym XF86AudioMute exec media-control mute

bindsym $Mod+$Left focus left
bindsym $Mod+$Down focus down
bindsym $Mod+$Up focus up
bindsym $Mod+$Right focus right

bindsym $SMod+$Left move left
bindsym $SMod+$Down move down
bindsym $SMod+$Up move up
bindsym $SMod+$Right move right

bindsym $Mod+f fullscreen

# bindsym $Mod+h layout default
# bindsym $Mod+t layout tabbed
# bindsym $Mod+e layout toggle split
# bindsym $Mod+v split vertical
# bindsym $Mod+o split horizontal

# toggle tiling / floating
bindsym $Mod+Shift+space floating toggle
bindsym $Mod+space focus mode_toggle

# switch to workspace
bindsym $Mod+1 workspace 1
bindsym $Mod+2 workspace 2
bindsym $Mod+3 workspace 3
bindsym $Mod+4 workspace 4

# move focused container to workspace
bindsym $SMod+1 move container to workspace 1
bindsym $SMod+2 move container to workspace 2
bindsym $SMod+3 move container to workspace 3
bindsym $SMod+4 move container to workspace 4

bindsym $Mod+Shift+backslash move workspace to output right
bindsym $Mod+Shift+c reload
bindsym $Mod+Shift+z exec "i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -b 'Yes, exit i3' 'i3-msg exit'"

bar {
        status_command i3status
}

hide_edge_borders both
workspace_layout tabbed

exec nm-applet

EOF
