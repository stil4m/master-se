module Menu.Base exposing (MenuItem(..), Item)


type alias Item =
    { name : String
    , key : String
    }


type MenuItem
    = Node Item Bool (List MenuItem)
    | Leaf Item
