module Main where

import System.IO

main = do
    putStr "Enter file name: "
    hFlush stdout
    name <- getLine
    file <- readFile name
    let rows = lines file
    let aRows = [x ++ "\n" | x <- rows, elem 'a' x] -- Lines where there is an a in it
    putStrLn (concat aRows)