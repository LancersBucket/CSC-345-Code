{- ##################################
   Name: Freya Glick
   Date: 10/10/25
   Homework Assignment: HW4
   ################################## -}

module Prog4 where

sumLastPart :: Int -> [Int] -> Int
sumLastPart i x = sum (take i (reverse x))

middleProduct :: [Int] -> Int
middleProduct x = product (tail (init x))

init' :: [Int] -> [Int]
init' x = take ((length x)-1) x

tripleAll :: [Int] -> [(Int, Int)]
tripleAll [] = []
tripleAll (x:xs) = (x,x*3) : tripleAll xs

flip' :: [(Int, Int)] -> [(Int, Int)]
flip' [] = []
flip' ((a,b):xs) = (b,a) : flip' xs

sumLastPart' :: Int -> [Int] -> Int
sumLastPart' i [] = 0
sumLastPart' i (x:xs)
   | (length xs) < i = x + (sumLastPart' i xs)
   | otherwise = sumLastPart' i xs

listProduct :: [Int] -> Int
listProduct [x] = 1
listProduct (x:xs) = x * listProduct xs

middleProduct' :: [Int] -> Int
middleProduct' (x:xs) = listProduct xs

init'' :: [Int] -> [Int]
init'' (x:xs)
   | xs == [] = []
   | otherwise = x : init'' xs

ins :: (String, Int) -> [(String, Int)] -> [(String, Int)]
ins (a,b) [] = [(a,b)]
ins (a,b) ((c,d):xs)
   | b < d = (a,b) : (c,d) : xs
   | otherwise = (c,d) : (ins (a,b) xs)

iSort' :: [(String, Int)] -> [(String, Int)]
iSort' [] = []
iSort' ((a,b):xs) = ins (a,b) (iSort' xs)