{- ##################################
   Richard Burns
   Units Tests for Homework 7.

   Usage: ghci Prog2Tests; main

   Dependencies: cabal install tasty
                 cabal install tasty-hunit
   ################################## -}


import Prog7
import Test.Tasty 
import Test.Tasty.HUnit 
import System.Environment

import Data.List

main = do
    setEnv "TASTY_TIMEOUT" "2s"
    defaultMain tests

{-
main = defaultMain tests 
-}


e1, e2, e3, e4, e5 :: Expr
e1 = (Val 5)
e2 = (Add e1 e1)               --   (5 + 5)
e3 = (Val (-3))
e4 = (Sub e1 e2)               --    5 - (5 + 5)
e5 = (Add e4 e2)               --    (5 - (5 + 5)) + (5 + 5)

e16, e17, e18, e19, e20 :: Expr
e16 = (Val 0)
e17 = (Div e1 e16)             --   (5 / 0)
e18 = (Div e2 (Sub e1 e1))     --   (5+5) / (5-5)
e19 = (Mul e1 e4)              --   5 * (5 - (5 + 5))
e20 = (Mul e1 e3)              --   5 * -3
e21 = (Mod e2 e1)              --   10 % 5 

tests :: TestTree
tests = testGroup "Tests" [unitTests]

unitTests = testGroup "Unit tests"
  [
    -- unique :: Eq a => [a] -> [a]
    testCase "test_unique1" $ assertEqual [] [1,2,3,4] (unique [1,2,3,4]),
    testCase "test_unique2" $ assertEqual [] [3] (unique [1,2,2,1,3]),
    testCase "test_unique3" $ assertEqual [] [] (unique [1,2,2,1]),
    testCase "test_unique4" $ assertEqual [] [1,4] (unique [1,2,2,3,3,4,5,5]),

    -- piglatinize :: String -> String
    testCase "test_piglatinize1" $ assertEqual [] "amiryay" (piglatinize "amir"),
    testCase "test_piglatinize2" $ assertEqual [] "oopercay" (piglatinize "cooper"),
    testCase "test_piglatinize3" $ assertEqual [] "urnsbay" (piglatinize "burns"),
    testCase "test_piglatinize4" $ assertEqual [] "uicay" (piglatinize "cui"),    

    -- value1 :: Expr1 -> Int
    testCase "test_value1_1" $ assertEqual [] 5 (value1 e1),
    testCase "test_value1_2" $ assertEqual [] 10 (value1 e2),
    testCase "test_value1_3" $ assertEqual [] (-3) (value1 e3),
    testCase "test_value1_4" $ assertEqual [] (-5) (value1 e4),
    testCase "test_value1_5" $ assertEqual [] 5 (value1 e5),
    testCase "test_value1_6" $ assertEqual [] 0 (value1 e21),

    -- value2 :: Expr1 -> Maybe Int
    testCase "test_value2_1" $ assertEqual [] (Just 0) (value2 e16),
    testCase "test_value2_2" $ assertEqual [] Nothing (value2 e17),
    testCase "test_value2_3" $ assertEqual [] Nothing (value2 e18),
    testCase "test_value2_4" $ assertEqual [] (Just (-25)) (value2 e19),
    testCase "test_value2_5" $ assertEqual [] (Just (-15)) (value2 e20),

    -- sumSqNeg :: [Int] -> Int
    testCase "test_sumSqNeg1" $ assertEqual [] 0 (sumSqNeg [1,2,3,4]),
    testCase "test_sumSqNeg2" $ assertEqual [] 5 (sumSqNeg [1,(-2),2,(-1),3]),
    testCase "test_sumSqNeg3" $ assertEqual [] 10 (sumSqNeg [(-1),(-2),(-2),(-1)]),
    testCase "test_sumSqNeg4" $ assertEqual [] 34 (sumSqNeg [1,2,2,3,(-3),4,5,(-5)]),

    -- containing :: Eq a => [a] -> [a] -> Bool
    testCase "test_containing1" $ assertEqual [] True (containing [1,2,3] [3,2,1]),
    testCase "test_containing2" $ assertEqual [] True (containing [1,2] [1,2]),
    testCase "test_containing3" $ assertEqual [] False (containing [1,2,3] [1,2]),
    testCase "test_containing4" $ assertEqual [] True (containing [1,2] [1,2,3]),

    -- total :: (Int -> Int) -> [Int] -> Int
    testCase "test_total1" $ assertEqual [] 12 (total (+2) [1,2,3]),
    testCase "test_total2" $ assertEqual [] 0 (total (*0) [1,2,3]),
    testCase "test_total3" $ assertEqual [] (-6) (total (* (-1)) [1,2,3]),

    -- containing' :: Eq a => [a] -> [a] -> Bool
    testCase "test_containingprime1" $ assertEqual [] True (containing' [1,2,3] [3,2,1]),
    testCase "test_containingprime2" $ assertEqual [] True (containing' [1,2] [1,2]),
    testCase "test_containingprime3" $ assertEqual [] False (containing' [1,2,3] [1,2]),
    testCase "test_containingprime4" $ assertEqual [] True (containing' [1,2] [1,2,3]),

    -- lengths :: [String] -> [Int]
    testCase "test_lengths1" $ assertEqual [] [11,3,5] (lengths ["amiruzzaman", "cui", "burns"]),
    testCase "test_lengths2" $ assertEqual [] [6] (lengths ["cooper"]),
    testCase "test_lengths3" $ assertEqual [] [5,0,4] (lengths ["burns","","chen"]) 
  ]
