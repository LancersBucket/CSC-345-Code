{- ##################################
   Name: Freya Glick
   Date: 10/15/25
   Homework Assignment: HW5
   ################################## -}

module Prog5 where

reverse' :: [a] -> [a]
reverse' list = case list of
  [] -> []
  (x:xs) -> reverse' xs ++ [x]

isPalindrome :: String -> Bool
isPalindrome s = s == reverse' s

type TimeStamp = (Int, Int, Int) -- (HH:MM:SS)

totalSeconds :: TimeStamp -> Int
totalSeconds (h,m,s) = h*60*60 + m*60 + s

isValid :: TimeStamp -> Bool
isValid (h,m,s)
  | h < 0 || m < 0 || s < 0 = False
  | s > 59 || m > 59 = False
  | otherwise = True

isShorter :: TimeStamp -> TimeStamp -> Int
isShorter t1 t2
  | (totalSeconds t1) < (totalSeconds t2) = 1
  | (totalSeconds t1) > (totalSeconds t2) = -1
  | otherwise = 0

time2Str :: TimeStamp -> String
time2Str (h,m,s) = pad h ++ ":" ++ pad m ++ ":" ++ pad s
  where
    pad :: Int -> String
    pad digit
      | digit <= 9 = "0" ++ show digit
      | otherwise = show digit

type Date = (Int, Int, Int) -- (MM, DD, YYYY)
data Season = Winter | Spring | Summer | Fall
  deriving (Show, Eq)

monthLookup :: Int -> Int
monthLookup day
  | day <= 31 = 1
  | day <= 59 = 2
  | day <= 90 = 3
  | day <= 120 = 4
  | day <= 151 = 5
  | day <= 181 = 6
  | day <= 212 = 7
  | day <= 243 = 8
  | day <= 274 = 9
  | day <= 305 = 10
  | day <= 335 = 11
  | day <= 365 = 12

monthRange :: Int -> Int -> [Int]
monthRange d1 d2
  | d2 < d1 = []
  | otherwise = dedup [monthLookup day | day <- [d1..d2]]
  where
    dedup :: [Int] -> [Int]
    dedup [] = []
    dedup (x:[]) = [x]
    dedup (x:y:xs)
      | x == y = dedup (y:xs)
      | otherwise = [x] ++ dedup (y:xs)

validDate :: Date -> Bool
validDate (m,d,_)
  | m == 1 && d <= 31 = True
  | m == 2 && d <= 28 = True
  | m == 3 && d <= 31 = True
  | m == 4 && d <= 30 = True
  | m == 5 && d <= 31 = True
  | m == 6 && d <= 30 = True
  | m == 7 && d <= 31 = True
  | m == 8 && d <= 31 = True
  | m == 9 && d <= 30 = True
  | m == 10 && d <= 31 = True
  | m == 11 && d <= 30 = True
  | m == 12 && d <= 31 = True
  | otherwise = False

season :: Date -> Season
season (m,_,_)
  | m == 12 || m <= 2 = Winter
  | m <= 6 = Spring
  | m <= 9 = Summer
  | m <= 11 = Fall
