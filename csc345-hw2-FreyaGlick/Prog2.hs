{- ##################################
   Name: Freya Glick
   Date: 9/10/25
   Homework Assignment: HW2 
   ################################## -}

module Prog2 where

tripleNumber :: Integer -> Integer
tripleNumber x
   | x <= 100 = x*3
   | otherwise = x

twoSame :: Integer -> Integer -> Integer -> Bool
twoSame x y z
   | (x == y) || (y == z) || (x == z) = True
   | otherwise = False

triangleArea :: Integer -> Integer -> Float
triangleArea b h = 0.5*(fromInteger (b*h))

product' :: Integer -> Integer
product' x
   | x == 1 = 1
   | otherwise = (product' (x-1)) * x 

or' :: Bool -> Bool -> Bool
or' True _ = True
or' _ x = x

integerSqrt :: Integer -> Integer
integerSqrt x = (floor (sqrt (fromInteger x)))
 
exponent' :: Integer -> Integer -> Integer
exponent' b e
   | e == 0 = 1
   | otherwise = b*(exponent' b (e-1))
