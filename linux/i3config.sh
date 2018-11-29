#!/bin/bash

Left=$1
Right=$4
Up=$3
Down=$2

cat << EOF
set \$mod Mod1

font pango:DejaVu Sans Mono 8

floating_modifier \$mod

bindsym \$mod+Return exec urxvt
bindsym \$mod+d exec dmenu_run

bindsym \$mod+Shift+q kill

bindsym \$mod+$Left focus left
bindsym \$mod+$Down focus down
bindsym \$mod+$Up focus up
bindsym \$mod+$Right focus right

bindsym \$mod+Shift+$Left move left
bindsym \$mod+Shift+$Down move down
bindsym \$mod+Shift+$Up move up
bindsym \$mod+Shift+$Right move right

bindsym \$mod+f fullscreen

# change container layout (stacked, tabbed, toggle split)
bindsym \$mod+h layout default
bindsym \$mod+s layout stacking
bindsym \$mod+t layout tabbed

# bindsym \$mod+e layout toggle split
# bindsym \$mod+v split vertical
# bindsym \$mod+o split horizontal

# toggle tiling / floating
bindsym \$mod+Shift+space floating toggle
bindsym \$mod+space focus mode_toggle

# bindsym \$mod+p focus parent
# bindsym \$mod+c focus child

# switch to workspace
bindsym \$mod+1 workspace 1
bindsym \$mod+2 workspace 2
bindsym \$mod+3 workspace 3
bindsym \$mod+4 workspace 4

# move focused container to workspace
bindsym \$mod+Shift+1 move container to workspace 1
bindsym \$mod+Shift+2 move container to workspace 2
bindsym \$mod+Shift+3 move container to workspace 3
bindsym \$mod+Shift+4 move container to workspace 4

bindsym \$mod+Shift+t move workspace to output right
bindsym \$mod+Shift+l exec lock-screen
bindsym \$mod+Shift+c reload
bindsym \$mod+Shift+z exec "i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -b 'Yes, exit i3' 'i3-msg exit'"

bar {
        status_command i3status
}

hide_edge_borders both
workspace_layout tabbed

EOF
