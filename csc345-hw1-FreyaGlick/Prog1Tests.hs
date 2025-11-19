{- ##################################
Richard Burns
Units Tests for Homework 1.

Usage: ghci Prog1Tests; main

Dependencies: cabal update
              cabal install tasty --lib
              cabal install tasty-hunit --lib

   ################################## -}


import Prog1
import Test.Tasty
import Test.Tasty.HUnit
import System.Environment


main = do
    setEnv "TASTY_TIMEOUT" "2s"
    defaultMain tests

{-
main = defaultMain tests
-}

tests :: TestTree
tests = testGroup "Tests" [unitTests]


unitTests = testGroup "Unit tests"
  [

      -- isTwoDigitPositive :: Integer -> Bool
      testCase "test_isThreeDigitPositive1" $ assertEqual [] False (isThreeDigitPositive 3),
      testCase "test_isThreeDigitPositive2" $ assertEqual [] False (isThreeDigitPositive (-300)),
      testCase "test_isThreeDigitPositive3" $ assertEqual [] True (isThreeDigitPositive 101),
      testCase "test_isThreeDigitPositive4" $ assertEqual [] False (isThreeDigitPositive 1001),

      -- dividesEvenly :: Integer -> Integer -> Bool
      testCase "test_dividesEvenly1" $ assertEqual [] True (dividesEvenly 20 2),
      testCase "test_dividesEvenly2" $ assertEqual [] True (dividesEvenly 10 5),
      testCase "test_dividesEvenly3" $ assertEqual [] False (dividesEvenly 10 3),

      -- middle :: Integer -> Integer -> Integer -> Integer
      testCase "test_middle1" $ assertEqual [] 3 (middle 2 14 3),
      testCase "test_middle2" $ assertEqual [] 3 (middle 12 3 1),
      testCase "test_middle3" $ assertEqual [] (-1) (middle (-4) 3 (-1)),
      testCase "test_middle4" $ assertEqual [] (-4) (middle (-4) (-4) 2),
      testCase "test_middle5" $ assertEqual [] 9 (middle 3 9 10),
      testCase "test_middle6" $ assertEqual [] 3 (middle 3 (-4) 3),

      -- nor :: Bool -> Bool -> Bool
      testCase "test_nor1" $ assertEqual [] False (nor True True),
      testCase "test_nor2" $ assertEqual [] False (nor True False),
      testCase "test_nor3" $ assertEqual [] False (nor False True),
      testCase "test_nor4" $ assertEqual [] True (nor False False),

      -- f2c :: Float -> Float
      testCase "test_f2c1" $ assertEqual [] 0 (f2c 32),
      testCase "test_f2c2" $ assertEqual [] (floor 37.7) (floor (f2c 100)),
      testCase "test_f2c3" $ assertEqual [] (floor (-17.7)) (floor (f2c 0)),

      -- floorDecimal :: Float -> Float
      testCase "test_floorDecimal1" $ assertEqual [] 13.0 (floorDecimal 13.6),
      testCase "test_floorDecimal2" $ assertEqual [] 13.0 (floorDecimal 13.2),
      testCase "test_floorDecimal3" $ assertEqual [] (-14.0) (floorDecimal (-13.3)),
      testCase "test_floorDecimal4" $ assertEqual [] (-14.0) (floorDecimal (-13.6)),

      -- letterGrade :: Integer -> String
      testCase "test_letterGrade1" $ assertEqual [] "A" (letterGrade 93),
      testCase "test_letterGrade2" $ assertEqual [] "B" (letterGrade 84),
      testCase "test_letterGrade3" $ assertEqual [] "C+" (letterGrade 79),
      testCase "test_letterGrade4" $ assertEqual [] "F" (letterGrade 19),

      -- averageThree :: Integer -> Integer -> Integer -> Float
      testCase "test_averageThree1" $ assertEqual [] 98 (averageThree 100 97 97),
      testCase "test_averageThree2" $ assertEqual [] 1 (averageThree 3 (-2) 2),
      testCase "test_averageThree3" $ assertEqual [] 25 (averageThree 25 25 25),
      testCase "test_averageThree4" $ assertEqual [] 3 (averageThree 3 0 6),

      -- howManyBelowAverage :: Integer -> Integer -> Integer -> Integer
      testCase "test_howManyAboveAverage1" $ assertEqual [] 1 (howManyAboveAverage 3 4 11),
      testCase "test_howManyAboveAverage2" $ assertEqual [] 2 (howManyAboveAverage 3 (-2) 2),
      testCase "test_howManyAboveAverage3" $ assertEqual [] 0 (howManyAboveAverage 25 25 25),
      testCase "test_howManyAboveAverage4" $ assertEqual [] 2 (howManyAboveAverage 1000000 1000000 999999)

  ]
