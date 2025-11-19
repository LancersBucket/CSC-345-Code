{- ##################################
    Name: 
    Date:
    Homework Assignment: 
    ################################## -}

module Prog3 where

swap :: (Char, Char, Char, Char, Char) -> (Char, Char, Char, Char, Char)
swap (a,b,c,d,e) = (e,d,c,b,a)

negateTwoDigits :: [Integer] -> [Integer]
negateTwoDigits a = [if ((abs x) > 9 && (abs x) < 100) then (-x) else x | x <- a]

matches :: Integer -> [Integer] -> [Integer]
matches a b = [x | x <- b, x == a] 

element :: Integer -> [Integer] -> Bool
element a b
    | matches a b == [] = False
    | otherwise = True 

absAll :: [Int] -> [(Int, Int, Bool)]
absAll a = [(x, abs x, x `mod` 2 == 0) | x <- a]

flip' :: [(Int, Int)] -> [(Int, Int)]
flip' a = [(y,x) | (x,y) <- a]

maxOfThree :: Int -> Int -> Int -> Int
maxOfThree a b c
    | a >= b && a >= c = a
    | b >= c = b
    | otherwise = c
middleOfThree :: Int -> Int -> Int -> Int
middleOfThree a b c
   | (a >= b) && (a <= c) = a
   | (b >= a) && (b <= c) = b
   | (c >= a) && (c <= b) = c
   | otherwise = middleOfThree b c a
minOfThree :: Int -> Int -> Int -> Int
minOfThree a b c
    | a <= b && a <= c = a
    | b <= c = b
    | otherwise = c

orderTriple :: (Int, Int, Int) -> (Int, Int, Int)
orderTriple (a,b,c) = ((maxOfThree a b c), (middleOfThree a b c), (minOfThree a b c))

asciiNums :: String -> [Int]
asciiNums a = [fromEnum x | x <- a]

triads :: Int -> [(Int,Int,Int)]
triads a = [(x,y,z) | n <- [1..a], x <- [1..n], y <- [1..n], z <- [1..n], x*x + y*y == z*z, x <= n, y <= n, z <= n]
