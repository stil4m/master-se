module Menu.RequirementsEngineering exposing (menu)

import Menu.Base exposing (..)


menu : MenuItem
menu =
    Node { name = "Requirements Engineering", key = "requirements-engineering" }
        False
        [ Leaf { name = "Readings", key = "readings" }
        ]
