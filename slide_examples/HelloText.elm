module HelloText where

import Graphics.Element exposing (Element, leftAligned)
import Text exposing (..)

text : Text
text =
  Text.fromString "Hello World!"
    |> bold
    |> height 24

main : Element
main = leftAligned text
