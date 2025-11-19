{- ##################################
   Richard Burns
   Units Tests for Homework 2.

   Usage: ghci Prog2Tests; main

   Dependencies: cabal install tasty
                 cabal install tasty-hunit
   ################################## -}


import Prog2 
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
    -- tripleNumber :: Integer -> Integer
    testCase "test_tripleNumber1" $ assertEqual [] 30 (tripleNumber 10),
    testCase "test_tripleNumber2" $ assertEqual [] 33 (tripleNumber 11),
    testCase "test_tripleNumber3" $ assertEqual [] 101 (tripleNumber 101),    
    testCase "test_tripleNumber4" $ assertEqual [] (-6) (tripleNumber (-2)), 

    -- twoSame :: Integer -> Integer -> Integer -> Bool
    testCase "test_twoSame1" $ assertEqual [] True (twoSame 1 1 0),
    testCase "test_twoSame2" $ assertEqual [] True (twoSame 3 4 4),
    testCase "test_twoSame3" $ assertEqual [] True (twoSame 5 0 5),    
    testCase "test_twoSame4" $ assertEqual [] False (twoSame 2 3 5),   

    -- triangleArea :: Integer -> Integer -> Float
    testCase "test_triangleArea1" $ assertEqual [] 0.5 (triangleArea 1 1),
    testCase "test_triangleArea2" $ assertEqual [] 6 (triangleArea 3 4),
    testCase "test_triangleArea3" $ assertEqual [] 4 (triangleArea 2 4), 

    -- product' :: Integer -> Integer
    testCase "test_product1" $ assertEqual [] 1 (product' 1),
    testCase "test_product2" $ assertEqual [] 6 (product' 3),
    testCase "test_product3" $ assertEqual [] 120 (product' 5), 

    -- or' :: Bool -> Bool -> Bool
    testCase "test_or1" $ assertEqual [] True (or' True True),
    testCase "test_or2" $ assertEqual [] True (or' True False),
    testCase "test_or3" $ assertEqual [] True (or' False True),    
    testCase "test_or4" $ assertEqual [] False (or' False False),       
 
    -- integerSqrt :: Integer -> Integer
    testCase "test_integerSqrt1" $ assertEqual [] 4 (integerSqrt 16),
    testCase "test_integerSqrt2" $ assertEqual [] 3 (integerSqrt 15),
    testCase "test_integerSqrt3" $ assertEqual [] 2 (integerSqrt 7),
    testCase "test_integerSqrt4" $ assertEqual [] 1 (integerSqrt 1),

    -- exponent' :: Integer -> Integer -> Integer
    testCase "test_exponent1" $ assertEqual [] 256 (exponent' 2 8),
    testCase "test_exponent2" $ assertEqual [] 1 (exponent' 2 0),
    testCase "test_exponent3" $ assertEqual [] 27 (exponent' 3 3)

  ]
