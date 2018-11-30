#!/bin/bash

Left=$1
Right=$4
Up=$3
Down=$2

Mod="Mod1"

cat << EOF

font pango:DejaVu Sans Mono 8

floating_modifier $Mod

bindsym $Mod+Return exec urxvt
bindsym $Mod+d exec dmenu_run
bindsym $Mod+Shift+l exec lock-screen
bindsym $Mod+Shift+a exec "scrot -s -e 'xclip -selection clipboard -t image/png -i \$f && rm \$f'"

bindsym $Mod+Shift+q kill

bindsym $Mod+$Left focus left
bindsym $Mod+$Down focus down
bindsym $Mod+$Up focus up
bindsym $Mod+$Right focus right

bindsym $Mod+Shift+$Left move left
bindsym $Mod+Shift+$Down move down
bindsym $Mod+Shift+$Up move up
bindsym $Mod+Shift+$Right move right

bindsym $Mod+f fullscreen

# change container layout (stacked, tabbed, toggle split)
bindsym $Mod+h layout default
bindsym $Mod+s layout stacking
bindsym $Mod+t layout tabbed

# bindsym $Mod+e layout toggle split
# bindsym $Mod+v split vertical
# bindsym $Mod+o split horizontal

# toggle tiling / floating
bindsym $Mod+Shift+space floating toggle
bindsym $Mod+space focus mode_toggle

# bindsym $Mod+p focus parent
# bindsym $Mod+c focus child

# switch to workspace
bindsym $Mod+1 workspace 1
bindsym $Mod+2 workspace 2
bindsym $Mod+3 workspace 3
bindsym $Mod+4 workspace 4

# move focused container to workspace
bindsym $Mod+Shift+1 move container to workspace 1
bindsym $Mod+Shift+2 move container to workspace 2
bindsym $Mod+Shift+3 move container to workspace 3
bindsym $Mod+Shift+4 move container to workspace 4

bindsym $Mod+Shift+t move workspace to output right
bindsym $Mod+Shift+c reload
bindsym $Mod+Shift+z exec "i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -b 'Yes, exit i3' 'i3-msg exit'"

bar {
        status_command i3status
}

hide_edge_borders both
workspace_layout tabbed

EOF
