module ArrowModel where

import Color as Colour
import Graphics.Collage exposing (..)
import Graphics.Element exposing (..)
import Keyboard

type alias Model =
  { x : Int
  , y : Int
  , shape : Form
  }

playerShape : Form
playerShape =
  square 60 |> filled Colour.blue

initPlayer : Model
initPlayer =
  { x = 0
  , y = 0
  , shape = playerShape
  }

update : { x : Int, y : Int } -> Model -> Model
update {x, y} player =
  let
    _ = Debug.watch "player" (toString player)  -- bug?
    _ = Debug.watch "keyboard" (x, y)
  in
    { player
      | x = player.x + (x * 10)
      , y = player.y + (y * 10)
    }

renderPlayer : Model -> Form
renderPlayer player =
  move (toFloat player.x, toFloat player.y) player.shape

view : Model -> Element
view player =
  collage 400 400 [ renderPlayer player ]

main : Signal Element
main =
  Signal.foldp update initPlayer Keyboard.arrows
    |> Signal.map view
