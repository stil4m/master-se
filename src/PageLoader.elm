port module PageLoader exposing (view, update, initialModel, Msg, loadPage, Model)

import Html exposing (Html, div, text)
import Task
import Http
import Markdown


type Status
    = Err String
    | Loaded String


type alias Model =
    { loading : Bool
    , page : String
    , status : Maybe Status
    }


type Msg
    = StatusUpdate Status
    | LoadPage String


port triggerMathjax : String -> Cmd msg



initialModel : Model
initialModel =
    { page = "", loading = False, status = Nothing }


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        StatusUpdate status ->
            { model | status = Just status } ! [ triggerMathjax "X" ]
        LoadPage page ->
            { page = page, loading = True, status = Nothing } ! [ loadPage page ]


view : Model -> Html Msg
view model =
    case model.status of
        Nothing ->
            if model.loading then
                div [] [ text "Loading..." ]
            else
                div [] []

        Just status ->
            case status of
                Err err ->
                    div [] [ text <| "Error: " ++ err ]

                Loaded m ->
                    Markdown.toHtml [] m


loadPage : String -> Cmd Msg
loadPage p =
    Http.getString ("../" ++p ++ ".md")
        |> Task.perform (toString >> Err >> StatusUpdate) (Loaded >> StatusUpdate)
