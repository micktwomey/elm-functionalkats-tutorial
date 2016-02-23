module ArrowPresses where

-- I fixed the spelling
import Color as Colour
import Graphics.Collage exposing (ngon, filled, Shape, collage, toForm, Form, square, rotate)
import Graphics.Element exposing (Element, show)
import Keyboard

type Arrow
  = Left
  | Right
  | Up
  | Down
  | Nothing

-- Limitation: Only responds to one unique arrow press
getArrow : { x : Int, y : Int } -> Arrow
getArrow {x, y} =
  let
    _ = Debug.watch "getArrow" (x, y)
  in
    case (x, y) of
      (1, 0) -> Right
      (-1, 0) -> Left
      (0, 1) -> Up
      (0, -1) -> Down
      _ -> Nothing -- This sucks up all other cases, try commenting it out

renderArrow : Arrow -> Form
renderArrow arrow =
  let
    _ = Debug.watch "renderArrow" arrow
    arrowShape = ngon 3 30
    boxShape = square 30
  in
    case arrow of
      Left ->
        rotate (degrees 180) (filled Colour.blue arrowShape)
      Right ->
        filled Colour.red arrowShape
      Down ->
        rotate (degrees -90) (filled Colour.green arrowShape)
      Up ->
        rotate (degrees 90) (filled Colour.orange arrowShape)
      Nothing ->
        filled Colour.black boxShape

showArrow : { x : Int, y : Int } -> Element
showArrow arrow =
  let
    shape = getArrow arrow |> renderArrow
  in
    collage 400 400 [ shape ]

main : Signal Element
main =
  Signal.map showArrow Keyboard.arrows
