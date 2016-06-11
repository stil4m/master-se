module Menu.SoftwareEvolution exposing (menu)

import Menu.Base exposing (..)


menu : MenuItem
menu =
    Node { name = "Software Evolution", key = "software-evolution" }
        False
        [ Node { name = "Notes", key = "notes" }
            False
            [ Leaf { name = "Week 1: 2015-10-26", key = "w1" }
            , Leaf { name = "Week 2: 2015-11-02", key = "w2" }
            , Leaf { name = "Week 3: 2015-11-09", key = "w3" }
            , Leaf { name = "Week 4: 2015-11-16", key = "w4" }
            , Leaf { name = "Week 5: 2015-11-23", key = "w5" }
            , Leaf { name = "Week 6: 2015-12-30", key = "w6" }
            , Leaf { name = "Week 7: 2015-12-07", key = "w7" }
            , Leaf { name = "Week 8: 2015-12-14", key = "w8" }
            ]
        , Node { name = "Assignments", key = "assignments" }
            False
            [ Leaf { name = "Series 0", key = "series0" }
            , Leaf { name = "Series 1", key = "series1" }
            ]
        , Leaf { name = "Resources", key = "resources" }
        , Leaf { name = "Literature", key = "literature" }
        ]
