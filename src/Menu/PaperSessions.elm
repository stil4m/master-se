module Menu.PaperSessions exposing (menu)

import Menu.Base exposing (..)


menu : MenuItem
menu =
    Node { name = "Paper Sessions", key = "paper-sessions" }
        False
        [ Leaf { name = "Session 1 (2015-09-07)", key = "session1" }
        , Leaf { name = "Session 2 (2015-11-02)", key = "session2"}
        , Leaf { name =  "Session 3 (2015-11-17)", key = "session3"}
        ]
