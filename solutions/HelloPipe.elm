module HelloPipe where

import Graphics.Element exposing (Element, leftAligned)
import Text exposing (..)

main : Element
main =
  fromString "Hello World!"
    |> bold
    |> height 24
    |> leftAligned
