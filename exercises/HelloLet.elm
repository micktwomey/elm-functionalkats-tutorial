module HelloLet where

import Html exposing (..)
import Html.Attributes exposing (..)

header : String -> Html
header title =
  let
    ?
  in
    h1 [] [ htmlTitle ]

main : Html
main =
  header "Hello World"
