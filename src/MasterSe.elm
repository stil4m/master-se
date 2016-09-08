module MasterSe exposing (Model, Msg, view, update, initialModel)

import Html exposing (Html, div, text, node)
import Html.App as Html
import Html.Attributes exposing (id, class, attribute, style)
import NavBar
import Menu
import PageLoader


type alias Model =
    { menu : Menu.Model
    , pageLoader : PageLoader.Model
    }


type Msg
    = MenuMsg Menu.Msg
    | PageLoaderMsg PageLoader.Msg


initialModel : Maybe String -> ( Model, Cmd Msg )
initialModel initialPage =
    let
        pageLoader = PageLoader.initialModel
    in
        { menu = Menu.initialModel, pageLoader = pageLoader }
            !
                case initialPage of
                    Just x -> [PageLoader.loadPage x |> Cmd.map PageLoaderMsg]
                    Nothing -> []


view : Model -> Html Msg
view model =
    div [ id "wrapper" ]
        [ NavBar.view
        , div [ id "page-wrapper", style [ ( "margin-left", "300px" ) ] ]
            [ div [ class "panel-heading" ]
                [ Menu.view model.menu |> Html.map MenuMsg
                , PageLoader.view model.pageLoader |> Html.map PageLoaderMsg
                ]
            ]
        , text "hello"
        ]


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        MenuMsg x ->
            let
                (newMenu, page) =
                    Menu.update x model.menu

                newModel =
                    { model | menu = newMenu }

            in
                case page of
                    Nothing -> newModel ! []
                    Just x ->
                        newModel ! [PageLoader.loadPage x |> Cmd.map PageLoaderMsg]

        PageLoaderMsg x ->
            let
                ( newPageLoader, pageLoaderCmds ) =
                    PageLoader.update x model.pageLoader
            in
                { model | pageLoader = newPageLoader } ! [ Cmd.map PageLoaderMsg pageLoaderCmds ]
