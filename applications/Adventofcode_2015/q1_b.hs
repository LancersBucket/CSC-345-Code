module Main where

import System.IO

getPosNegative :: String -> (Int,Int) -> Int
getPosNegative _ (floor,pos)
    | floor < 0 = pos
getPosNegative (x:xs) (floor,pos)
    | x == '(' = getPosNegative xs (floor+1, pos+1)
    | x == ')' = getPosNegative xs (floor-1, pos+1)

main = do
    putStr "Enter file name: "
    hFlush stdout
    name <- getLine
    file <- readFile name
    let pos = getPosNegative file (0,0)
    putStrLn (show pos)