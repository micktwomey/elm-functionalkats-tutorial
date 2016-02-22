module HelloWorldFunction where

import Html exposing (..)
import Html.Attributes exposing (..)

header : String -> Html
header title =
  h1 [] [ text title ]

main : Html
main =
  header "Hello World"
