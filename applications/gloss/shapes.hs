module Main where

import Graphics.Gloss

main :: IO ()
main = display window background drawing
    where
        window = InWindow "Shapes Example" (400, 400) (100, 100)
        background = white
        -- Red Circle, Blue Rectangle
        drawing = Pictures [Color red (Translate (-100) 0 (Circle 50)), Color blue (Translate 100 0 (rectangleSolid 80 40))]