# Elm Workshop

## Functional Kats February 2016

### Michael Twomey
### @micktwomey

---

# What is Elm?

> The best of functional programming in your browser
-- elm-lang.org

- Focussed on the web front end
- Strongly Typed (in a good way)
- ML inspired
- Compiles to Javascript

---

# A Taste of Elm

```haskell
module HelloWorld where

import Html exposing (h1, text, Html)
import Html.Attributes exposing (class)

main : Html
main =
  h1 [ class "welcome" ] [ text "Hello World!" ]
```

^ See HelloWorld.elm
^ Showing module declaration
^ Showing imports
^ Showing exposing
^ Showing type declaration
^ Showing function calls and lists

---

# A Taste of Elm (Graphical!)

```haskell
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
```

^ See HelloText.elm
^ Showing the graphics code (canvas)
^ Showing pipe operator
^ Showing namespaces

---

# Let's Get Started!

---

# [fit] Install Elm

# [fit] http://elm-lang.org/install

# [fit] NB version 0.16

^ If Elm 0.17 is released before we start this stick with 0.16 :)

---

# [fit] Install Atom (Controversial!)

# [fit] https://atom.io

^ If you don't have a preferred editor then Atom is a good choice for elm

---

# [fit] Install Plugins

## [fit] language-elm
## [fit] linter-elm-make

---

# Setup Code

```sh
git clone https://
```

---

# Exercise 1: Hello World Yourself!
