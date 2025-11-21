module Main where

import System.IO

countUp :: String -> Int
countUp s = length (filter ('('==) s) 

countDown :: String -> Int
countDown s = length (filter (')'==) s)

main = do
    putStr "Enter file name: "
    hFlush stdout
    name <- getLine
    file <- readFile name
    let up = countUp file
    let down = countDown file
    putStrLn (show (up - down))