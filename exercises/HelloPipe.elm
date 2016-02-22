module HelloPipe where

import Graphics.Element exposing (Element, leftAligned)
import Text exposing (..)

main : Element
main = leftAligned (height 24 (bold (fromString "Hello World!")))
