module KeyboardSignals where

import Graphics.Element exposing (Element, show)
import Keyboard exposing (arrows)
import Signal

main : Signal Element
main =
  Signal.map show arrows
