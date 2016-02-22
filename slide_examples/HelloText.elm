module HelloText where

import Graphics.Element exposing (Element, leftAligned)
import Text

text : Text.Text
text =
  Text.fromString "Hello World!"
    |> Text.bold
    |> Text.height 24

main : Element
main = leftAligned text
