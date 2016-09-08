module Menu exposing (initialModel, view, Model, Msg, update)

import Menu.SoftwareTesting
import Menu.SoftwareEvolution
import Menu.SoftwareProcess
import Menu.RequirementsEngineering
import Menu.Base exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import String


type alias Model =
    List MenuItem


type Msg
    = Toggle MenuItem
    | Trigger String


initialModel : Model
initialModel =
    [ Menu.SoftwareTesting.menu
    , Menu.SoftwareEvolution.menu
    , Menu.SoftwareProcess.menu
    , Menu.RequirementsEngineering.menu
    ]

view : Model -> Html Msg
view model =
    node "nav-menu"
        []
        [ renderLevel 1 [] model
        ]


renderLevel : Int -> List String -> List MenuItem -> Html Msg
renderLevel level parents items =
    ul [ class <| "nav-level" ++ toString level ]
        (List.map (renderLevelItem level parents) items)


renderLevelItem : Int -> List String -> MenuItem -> Html Msg
renderLevelItem level parents item =
    case item of
        Leaf s ->
            let
                p = String.join "/" (parents ++ [ s.key ])
            in
              li []
                [ a [ href <| "#" ++ p
                     , onClick (Trigger p) ] [ span [] [ text s.name ] ] ]

        Node s open subs ->
            let
                caretClass =
                    if open then
                        "fa-angle-down"
                    else
                        "fa-angle-right"

                subItems =
                    if open then
                        [ renderLevel (level + 1) (parents ++ [ s.key ]) subs ]
                    else
                        []
            in
                li []
                    ((a [ onClick (Toggle item) ] [ span [] [ text s.name, i [ class <| "fa pull-right " ++ caretClass ] [] ] ])
                        :: subItems
                    )


update : Msg -> Model -> ( Model, Maybe String )
update msg model =
    case msg of
        Toggle item ->
            ( toggleItemIn item model, Nothing )

        Trigger path ->
            ( model, Just path )


toggleItemIn : MenuItem -> List MenuItem -> List MenuItem
toggleItemIn item list =
    List.map (toggleItem item) list


toggleItem : MenuItem -> MenuItem -> MenuItem
toggleItem source target =
    case target of
        Node name open subs ->
            if (source == target) then
                Node name (not open) subs
            else
                Node name open (toggleItemIn source subs)

        Leaf name ->
            target
