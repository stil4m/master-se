module NavBar exposing (view)

import Html exposing (nav,a,div,text,Html)
import Html.Attributes exposing (href,class,attribute,style)

view : Html a
view =
    nav
      [ class "navbar navbar-fixed-top navbar-default navbar-static-top", attribute "role" "navigation", style [("margin-bottom","0")] ]
      [ div
        [ class "navbar-header" ]
        [ a
          [ class "navbar-brand", href "index.html" ]
          [ text "Master Software Engineering - stil4m" ]
        ]
      ]
