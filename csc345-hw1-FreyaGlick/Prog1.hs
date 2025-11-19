{- ##################################
   Name: Freya Glick
   Date: 09/06/2025
   Homework Assignment: HW1 
   ################################## -}

module Prog1 where


isThreeDigitPositive :: Int -> Bool
isThreeDigitPositive x = ((x `div` 100) < 10) && ((x `div` 100) > 0)


dividesEvenly :: Integer -> Integer -> Bool
dividesEvenly x y = ((x `mod` y) == 0)


middle :: Integer -> Integer -> Integer -> Integer
middle x y z
   | (x >= y) && (x <= z) = x
   | (y >= x) && (y <= z) = y
   | (z >= x) && (z <= y) = z
   | otherwise = middle y z x


nor :: Bool -> Bool -> Bool
nor False False = True
nor _ _ = False


f2c :: Float -> Float
f2c f = (f-32)*(5/9)


floorDecimal :: Float -> Float
floorDecimal x = fromInteger (floor x)


letterGrade :: Integer -> String
letterGrade g
   | g >= 93 = "A"
   | g >= 90 = "A-"
   | g >= 87 = "B+"
   | g >= 83 = "B"
   | g >= 80 = "B-"
   | g >= 77 = "C+"
   | g >= 73 = "C"
   | g >= 70 = "C-"
   | g >= 67 = "D+"
   | g >= 63 = "D"
   | g >= 60 = "D-"
   | otherwise = "F"


averageThree :: Integer -> Integer -> Integer -> Float
averageThree x y z = fromInteger ((x+y+z) `div` 3)


howManyAboveAverage :: Integer -> Integer -> Integer -> Integer
howManyAboveAverage x y z
   | (fromInteger x > (averageThree x y z)) && (fromInteger y > (averageThree x y z)) && (fromInteger z > (averageThree x y z)) = 3
   | ((fromInteger x > averageThree x y z) && (fromInteger y > averageThree x y z)) || ((fromInteger x > averageThree x y z) && (fromInteger z > averageThree x y z)) || ((fromInteger y > averageThree x y z) && (fromInteger z > averageThree x y z)) = 2
   | (fromInteger x > (averageThree x y z)) || (fromInteger y > (averageThree x y z)) || (fromInteger z > (averageThree x y z)) = 1
   | otherwise = 0
