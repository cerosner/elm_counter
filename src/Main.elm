module Main exposing (..)

import Browser
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)

-- MAIN
main = Browser.sandbox {
  init = init,
  update = update,
  view = view
  }

-- MODEL
type alias Model = Int
init : Model
init = 0

-- UPDATE
type Msg
  = Increment
  | IncByTen
  | Decrement
  | Reset

update : Msg -> Model -> Model
update msg model =
  case msg of
    Increment -> model + 1
    IncByTen -> model + 10
    Decrement -> model - 1
    Reset -> 0

-- VIEW
view : Model -> Html Msg
view model =
  div [] [
    button [ onClick IncByTen ] [ text "+10" ],
    div [] [
      button [ onClick Increment ] [ text "+" ]
    ],
    div [] [ text (String.fromInt model) ],
    button [ onClick Decrement ] [ text "-" ],
    div [] [
      button [ onClick Reset ] [ text "Reset" ]
      ]
    ]
