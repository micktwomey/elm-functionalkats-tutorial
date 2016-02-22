module HelloTypes where

import Html exposing (Html, h1, div, text, ul, li, p, ol)
import List

-- Hint 1: To define a list of something use Type (List Something)
-- Hint 2: You probably want Int and String somewhere
type Greeting
  = Header String
  | Ul (List String)
  | Paragraph String
  | Numbers (List Int)

-- Hint: This works well with something like (List.map stringToLi strings)
stringToLi : String -> Html
stringToLi listitem =
  li [] [ text listitem ]

-- Hint: text wants a string, so for numbers you need (toString number) first

greeting : Greeting -> Html
greeting greet =
  case greet of
    Header header ->
      h1 [] [ text header ]
    Ul strings ->
      ul [] (List.map stringToLi strings)
    Paragraph para ->
      p [] [ text para ]
    Numbers numbers ->
      -- Ha! I cheated! I used syntax you haven't seen!
      ol [] (List.map (\x -> li [] [text (toString x) ]) numbers)

main : Html
main =
  div []
    [ greeting ( Header "Hello There" )
    , greeting ( Ul [ "Hello", "There", "People" ] )
    , greeting ( Paragraph "This is some text" )
    , greeting ( Numbers [ 1, 2, 3] )
    ]
