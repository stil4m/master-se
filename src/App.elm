module App exposing (main)

import Html.App exposing (programWithFlags)
import MasterSe exposing (initialModel, view, update)


main : Program (Maybe String)
main =
    programWithFlags
        { init = initialModel
        , view = view
        , update = update
        , subscriptions = \x -> Sub.none
        }
