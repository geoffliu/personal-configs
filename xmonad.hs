import XMonad

main = do
    xmonad $ defaultConfig
        { terminal = "urxvt"
        , focusFollowsMouse = False
        , modMask = mod4Mask
        , focusedBorderColor = "#9fee00"
        , normalBorderColor = "#85004b"
        }
