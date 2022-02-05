module Main exposing (main)

import Browser
import Dict exposing (update)
import Html


main : Program () Model Msg
main =
    Browser.document
        { init = init
        , subscriptions = subscriptions
        , view = view
        , update = update
        }


type alias Model =
    {}


type Msg
    = NoOp


init : () -> ( Model, Cmd Msg )
init _ =
    ( {}, Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.none


view : Model -> Browser.Document Msg
view model =
    { title = "Hello World"
    , body = [ Html.text "Hello World" ]
    }


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )
