module Main exposing (..)
import Html exposing (..)
import Html.Events exposing (onClick)
import Browser

-- main : HTML msg
main = Browser.sandbox { init = init, view = view, update = update } 


-- MODEL
type alias Model = 
  Int

init : Model
init = 5


-- VIEW
view model = 
  div []
  [ 
    h1 [] [ text ("Fruit to eat: " ++ (Debug.toString model)) ]
    , button [ onClick Decrement ] [ text "Eat fruit" ]
    , button [ onClick Reset ] [ text "Reset counter" ]
  ]


-- MESSAGE
type Msg = 
  Decrement | Reset


-- UPDATE
update msg model =
  case msg of
    Decrement ->
      if model > 0 then 
        model - 1 
      else 
        model + 5

    Reset -> 5
