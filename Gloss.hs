{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS -Wall -fno-warn-type-defaults #-}
import Graphics.Gloss
import Data.Monoid

window :: Display
window = InWindow "Window" (1400, 800) (10, 10)

background :: Color
background = greyN 0.7

axes :: Picture
axes = color red (line [ (-10000, 0), (10000,  0) ]) <>
       color red (line [ (0, -10000), (0,  10000) ])


main :: IO ()
main = display window background axes
