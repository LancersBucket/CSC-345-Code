module Main where

import System.IO
import Text.Read (readMaybe)

type QuoteAuthor = (String, String)

myQuotes = [("q1","a1"),("q2","a2"),
            ("q3","a3"),("q4","a4")]

selectQuote :: String -> [QuoteAuthor] -> String
selectQuote selection quotes = case readMaybe selection :: Maybe Int of
    Nothing -> (selection ++ " is not a valid selection")
    Just x
        | x > 0 && x <= (length quotes) ->
            ("Author: " ++ (snd (quotes !! (x-1))))
        | x == length quotes + 1 -> "Quit"
        | otherwise -> (selection ++ " is not a valid selection")

printQuotes :: [QuoteAuthor] -> [QuoteAuthor] -> IO ()
printQuotes [] quotes = do
    putStr (show (length quotes + 1))
    putStrLn ". Quit"
    result <- getLine
    let response = (selectQuote result quotes)
    if response == "Quit"
            then return ()
            else do
                putStrLn response
                printQuotes quotes []
printQuotes ((quot,auth):ys) x = do
    putStr (show (length x + 1))
    putStr ". "
    putStrLn ("\"" ++ quot ++ "\"")
    printQuotes ys (x ++ [(quot,auth)])

main = do
    putStr "Enter your name: "
    hFlush stdout
    name <- getLine
    printQuotes myQuotes []
