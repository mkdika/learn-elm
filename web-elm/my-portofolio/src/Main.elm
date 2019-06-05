module Main exposing (main)

import Html exposing (..)
import Html.Attributes exposing (..)
import View.View exposing (..)

main: Html Never
main = 
  div [ style "height" "100vh", style "background" "#eee" ] [ view ]
