module HelloWorld where

import Html exposing (h1, text, Html)
import Html.Attributes exposing (class)

main : Html
main =
  h1 [ class "welcome" ] [ text "Hello World!" ]
