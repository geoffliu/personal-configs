import XMonad

main = do
    xmonad $ defaultConfig
        { terminal = "urxvt"
        , focusFollowsMouse = False
        }
