module Main where

import System.IO

type Quote = (String, String)
type Quotes = [Quote]

quotes :: Quotes = [("Be yourself; everyone else is already taken.", "Oscar Wilde"),
                    ("I'm selfish, impatient and a little insecure. I make mistakes, I am out of control and at times hard to handle. But if you can't handle me at my worst, then you sure as hell don't deserve me at my best.", "Marilyn Monroe"),
                    ("So many books, so little time.", "Frank Zappa")]

getAuthor :: Int -> String
getAuthor i = snd (quotes !! (i-1))

getListIndex :: Quotes -> Int -> String
getListIndex ((quote,_):xs) i = "" ++ (show i) ++ ". " ++ quote ++ "\n" ++ getListIndex xs (i+1)
getListIndex _ _ = ""

getList :: Quotes -> String
getList q = getListIndex q 1

getInt :: IO Int
getInt = do 
    line <- getLine
    return ((read line)::Int)

main = do
    putStrLn "Quotes:"
    putStrLn (getList quotes)
    putStr "Enter a quote number to get the author (-1 to quit): "
    hFlush stdout
    q <- getInt
    if (q == -1) then return ()
    else do
        if ((q < ((length quotes)+1)) && (q > 0)) then do
            putStrLn (getAuthor q)
            putStrLn ""
            main
        else do
            putStrLn "Invalid Quote"
            main
