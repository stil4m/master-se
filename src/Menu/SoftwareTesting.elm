module Menu.SoftwareTesting exposing (menu)


import Menu.Base exposing (..)




testingWeek : List MenuItem
testingWeek =
    [ Leaf { name = "Notes", key = "notes" }
    , Leaf { name = "Workshop", key = "workshop" }
    , Leaf { name = "Lab", key = "lab" }
    ]

menu : MenuItem
menu = Node { name = "Software Testing", key = "software-testing" }
    False
    [ Node { name = "Week 1: 2015-08-31", key = "w1" }
        False
        testingWeek
    , Node { name = "Week 2: 2015-09-07", key = "w2" }
        False
        testingWeek
    , Node { name = "Week 3: 2015-09-14", key = "w3" }
        False
        testingWeek
    , Node { name = "Week 4: 2015-09-21", key = "w4" }
        False
        testingWeek
    , Node { name = "Week 5: 2015-09-28", key = "w5" }
        False
        testingWeek
    , Node { name = "Week 6: 2015-10-05", key = "w6" }
        False
        testingWeek
    , Node { name = "Week 7: 2015-10-12", key = "w7" }
        False
        [ Leaf { name = "Notes", key = "notes" } ]
    , Leaf { name = "Resources", key = "resources" }
    , Leaf { name = "Test Preparation", key = "test-preparation" }
    , Leaf { name = "Literature", key = "literature" }
    ]
