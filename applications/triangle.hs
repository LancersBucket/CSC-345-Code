module Main where

import System.IO

makeLine :: Int -> String
makeLine x
    | x < 1 = ""
    | otherwise = "*" ++ makeLine (x-1)

triangleHelper :: Int -> String
triangleHelper x
    | x < 1 = ""
    | x == 1 = "*"
    | otherwise = (triangleHelper (x-1)) ++ "\n" ++ (makeLine x)

makeTriangle :: Int -> String
makeTriangle x
    | x < 1 = ""
    | x == 1 = "*"
    | otherwise = triangleHelper x

main = do
    putStr "Enter the size of the triangle: "
    hFlush stdout
    s <- getLine
    let triangle = makeTriangle (read s)
    putStrLn triangle