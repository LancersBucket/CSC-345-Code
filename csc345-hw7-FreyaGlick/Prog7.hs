{- ##################################
   Name: Freya Glick
   Date: 12/03/25
   Homework Assignment: HW7 
   ################################## -}

module Prog7 where

unique_helper :: Eq a => a -> [a] -> Bool
unique_helper x ys = length [y | y <- ys, x == y] == 1

unique :: Eq a => [a] -> [a]
unique xs = [x | x <- xs, unique_helper x xs]

isVowel :: Char -> Bool
isVowel x = elem x ['a','e','i','o','u']

rotate :: String -> String
rotate (x:xs)
   | isVowel x = x:xs
   | otherwise = rotate (xs ++ [x])

piglatinize :: String -> String
piglatinize s
   | isVowel (s !! 0) = s ++ "yay"
   | otherwise = (rotate s) ++ "ay"

data Expr = Val Int
          | Add Expr Expr
          | Sub Expr Expr
          | Mul Expr Expr
          | Div Expr Expr
          | Mod Expr Expr

value1 :: Expr -> Int
value1 (Val x) = x
value1 (Add x y) = (value1 x) + (value1 y)
value1 (Sub x y) = (value1 x) - (value1 y)
value1 (Mul x y) = (value1 x) * (value1 y)
value1 (Div x y) = (value1 x) `div` (value1 y)
value1 (Mod x y) = (value1 x) `mod` (value1 y)

value2 :: Expr -> Maybe Int
value2 (Val x) = Just x
value2 (Add x y) = do
   x <- (value2 x)
   y <- (value2 y)
   return (x + y)
value2 (Sub x y) = do
   x <- (value2 x)
   y <- (value2 y)
   return (x - y)
value2 (Mul x y) = do
   x <- (value2 x)
   y <- (value2 y)
   return (x * y)
value2 (Div x y) = do
   x <- (value2 x)
   y <- (value2 y)
   if y == 0 then Nothing
   else return (x `div` y)
value2 (Mod x y) = do
   x <- (value2 x)
   y <- (value2 y)
   return (x `mod` y)

sumSqNeg :: [Int] -> Int
sumSqNeg = foldr (+) 0 . map (^ 2) . filter (< 0)

containing :: Eq a => [a] -> [a] -> Bool
containing xs ys = [x | x <- xs, elem x ys] == xs
-- containing xs ys = and [elem x ys | x <- xs, elem x ys]

total :: (Int -> Int) -> [Int] -> Int
total f xs = sum (map f xs)

containing' :: Eq a => [a] -> [a] -> Bool
containing' xs ys = and (map (\x -> elem x ys) xs)
-- containing' xs ys = (filter (\x -> elem x ys) xs) == xs

lengths :: [String] -> [Int]
lengths xs = map length xs