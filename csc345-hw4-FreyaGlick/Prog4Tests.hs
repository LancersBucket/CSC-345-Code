{- ##################################
   Richard Burns
   Units Tests for Homework 4.

   Usage: ghci Prog2Tests; main

   Dependencies: cabal install tasty
                 cabal install tasty-hunit
   ################################## -}


import Prog4
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
    -- sumLastPart :: Int -> [Int] -> Int
    testCase "test_sumLastPart1" $ assertEqual [] 9 (sumLastPart 2 [1..5]),
    testCase "test_sumLastPart2" $ assertEqual [] 5 (sumLastPart 1 [1..5]),
    testCase "test_sumLastPart3" $ assertEqual [] 0 (sumLastPart 0 [1..5]),  

    -- middleProduct :: [Int] -> Int
    testCase "test_middleProduct1" $ assertEqual [] 24 (middleProduct [1..5]),
    testCase "test_middleProduct2" $ assertEqual [] 120 (middleProduct [1..6]),
    testCase "test_middleProduct3" $ assertEqual [] 2 (middleProduct [1..3]),       

    -- init' :: [Int] -> [Int]
    testCase "test_init1" $ assertEqual [] [1..9] (init' [1..10]),
    testCase "test_init2" $ assertEqual [] [1..5] (init' [1..6]),
    testCase "test_init3" $ assertEqual [] [1] (init' [1,2]),
    testCase "test_init4" $ assertEqual [] [] (init' [1]),  

    -- tripleAll :: [Int] -> [(Int,Int)]
    testCase "test_tripleAll1" $ assertEqual [] [(2,6),(3,9),(5,15)] (tripleAll [2,3,5]),
    testCase "test_tripleAll2" $ assertEqual [] [(5,15)] (tripleAll [5]),
    testCase "test_tripleAll3" $ assertEqual [] [(9,27),(10,30)] (tripleAll [9..10]),

    -- flip' :: [(Int, Int)] -> [(Int, Int)]
    testCase "test_flip1" $ assertEqual [] [(5,3)] (flip' [(3,5)]),
    testCase "test_flip2" $ assertEqual [] [(5,3),(6,4)] (flip' [(3,5),(4,6)]),
    testCase "test_flip3" $ assertEqual [] [(5,3),(6,4),(7,5)] (flip' [(3,5),(4,6),(5,7)]),    

    -- sumLastPart' :: Int -> [Int] -> Int
    testCase "test_sumLastPartPrime1" $ assertEqual [] 10 (sumLastPart' 1 [1..10]),
    testCase "test_sumLastPartPrime2" $ assertEqual [] 27 (sumLastPart' 3 [1..10]),
    testCase "test_sumLastPartPrime3" $ assertEqual [] 40 (sumLastPart' 5 [1..10]),

    -- middleProduct' :: [Int] -> Int
    testCase "test_middleProductPrime1" $ assertEqual [] 24 (middleProduct' [1..5]),
    testCase "test_middleProductPrime2" $ assertEqual [] 120 (middleProduct' [1..6]),
    testCase "test_middleProductPrime3" $ assertEqual [] 120 (middleProduct' [0..6]),

    -- init'' :: [Int] -> [Int]
    testCase "test_initDPrime1" $ assertEqual [] [1..9] (init'' [1..10]),
    testCase "test_initDPrime2" $ assertEqual [] [1..5] (init'' [1..6]),
    testCase "test_initDPrime3" $ assertEqual [] [1] (init'' [1,2]),
    testCase "test_initDPrime4" $ assertEqual [] [] (init'' [1]),

    -- iSort' :: [(String,Int)] -> [(String,Int)]
    testCase "test_iSort1" $ assertEqual [] [("b", (-2)), ("a", 4), ("c", 9), ("d", 18)]
                                       (iSort' [("a", 4), ("b", (-2)), ("c", 9), ("d", 18)]),
    testCase "test_iSort2" $ assertEqual [] [("a",2),("aa",3),("aaa",4)] 
                                       (iSort' [("aaa",4),("aa",3),("a",2)]),
    testCase "test_iSort3" $ assertEqual [] [("aBD",2), ("bc",3)]
                                       (iSort' [("bc",3), ("aBD",2)])

  ]
