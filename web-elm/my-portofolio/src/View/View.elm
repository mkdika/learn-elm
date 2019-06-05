module View.View exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)
import View.Navigation exposing (navigation)
import View.Poem exposing (poem)
import View.About exposing (about)
import View.Stories exposing (stories)
import View.Contact exposing (contact)

view : Html Never
view = 
  div [ class "container-fluid" ]
    [ div [ class "container" ]
      [ h1 [] [ text "My Portfolio" ]
      , p [] [ text "Just Another Writers Portfolio" ]
      , navigation
      , about
      , div [ class "row" ]
        [ div [ class "col" ] [ poem ]
        , div [ class "col" ] [ poem ]
        , div [ class "col" ] [ poem ]
        ]
      , stories
      , contact
      ]
    ]
