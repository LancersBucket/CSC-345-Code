{- ##################################
   Name: Freya Glick
   Date: 11/14/25
   Homework Assignment: HW6
   ################################## -}

module Prog6 where

{----------}

data Expr = Lit Int
          | Add Expr Expr
          | Sub Expr Expr
      deriving Show

numAdds :: Expr -> Int
numAdds (Lit _) = 0
numAdds (Add x y) = 1 + (numAdds x) + (numAdds y)
numAdds (Sub x y) = (numAdds x) + (numAdds y)

depth :: Expr -> Int
depth (Lit _) = 0
depth (Add x y) = 1 + (max (depth x) (depth y))
depth (Sub x y) = 1 + (max (depth x) (depth y))

{----------}

data Set345 = NonEmptySet [Int]
            | EmptySet
      deriving Show

singletonOrEmpty :: Set345 -> Bool
singletonOrEmpty (NonEmptySet (x:[])) = True
singletonOrEmpty EmptySet = True
singletonOrEmpty _ = False

member :: Int -> Set345 -> Bool
member _ EmptySet = False
member i (NonEmptySet (x:xs))
      | i == x = True
      | xs == [] = member i EmptySet
      | otherwise = member i (NonEmptySet xs)

size :: Set345 -> Int
size EmptySet = 0
size (NonEmptySet x) = length x

ins :: Int -> Set345 -> Set345
ins i EmptySet = NonEmptySet [i]
ins i (NonEmptySet x)
      | member i (NonEmptySet x) = NonEmptySet x
      | otherwise = NonEmptySet ([i] ++ x)

union' :: Set345 -> Set345 -> Set345
union' EmptySet s = s
union' s EmptySet = s
union' (NonEmptySet (x:xs)) s
      | xs == [] = ins x (union' EmptySet s)
      | otherwise = ins x (union' (NonEmptySet xs) s)

intersection' :: Set345 -> Set345 -> Set345
intersection' (NonEmptySet (x:xs)) s
      | member x s = ins x (intersection' (NonEmptySet xs) s)
      | otherwise = intersection' (NonEmptySet xs) s
intersection' _ _ = EmptySet

{----------}

countLetters :: IO [Int]
countLetters = do x <- getLine
                  y <- getLine
                  z <- getLine
                  return [(length x), (length y), (length z)]

getInt :: IO Int
getInt = do line <- getLine
            return ((read line)::Int)

range :: IO [Int]
range = do x <- getInt
           y <- getInt
           if (x < y) then return [x..y] else return [y..x]
