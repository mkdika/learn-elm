module View.Navigation exposing (navigation)

import Html exposing (Html, a, li, text, ul)
import Html.Attributes exposing (class, href)

navigation : Html Never
navigation =
  ul [ class "nav justify-content-center bg-warning" ]
  [ li [ class "nav-item" ] 
    [ a [ class "nav-link active", href "#" ]
      [ text "About Me" ]
    ]  
  , li [ class "nav-item" ] 
    [ a [ class "nav-link", href "#" ]
      [ text "Poems" ]
    ]
  , li [ class "nav-item" ] 
    [a [ class "nav-link", href "#" ]
      [ text "Stories" ]
    ]
  , li [ class "nav-item" ]
    [ a [ class "nav-link", href "#" ]
      [ text "Contact" ]
    ]
  ]
