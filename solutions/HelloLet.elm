module HelloLet where

import Html exposing (..)
import Html.Attributes exposing (..)

header : String -> Html
header title =
  let
    fullTitle = "The title: " ++ title
    htmlTitle = text fullTitle
  in
    h1 [] [ htmlTitle ]

main : Html
main =
  header "Hello World"
