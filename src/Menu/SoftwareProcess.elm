module Menu.SoftwareProcess exposing (menu)

import Menu.Base exposing (..)


menu : MenuItem
menu =
    Node { name = "Software Process", key = "software-process" }
        False
        [ Node { name = "Week 1: 2016-02-01", key = "w1" }
            False
            [ Leaf { name = "Notes", key = "notes" }
            ]
        , Node { name = "Assignments", key = "assignments" }
            False
            [ Leaf { name = "Personal Reading", key = "personal-reading/0-reading-list" }
            ]
        ]
