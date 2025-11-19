{- ##################################
   Richard Burns
   Units Tests for Homework 3.

   Usage: ghci Prog2Tests; main

   Dependencies: cabal install tasty
                 cabal install tasty-hunit
   ################################## -}


import Prog3
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
    -- swap :: (Char, Char, Char, Char, Char) -> (Char, Char, Char, Char, Char)
    testCase "test_swap1" $ assertEqual [] ('e', 'd', 'c', 'b', 'a') (swap ('a', 'b', 'c', 'd', 'e')),
    testCase "test_swap2" $ assertEqual [] ('b', 'c', 'b', 'c', 'b') (swap ('b', 'c', 'b', 'c', 'b')),

    -- negateTwoDigits :: [Integer] -> [Integer]
    testCase "test_negateTwoDigits1" $ assertEqual [] [(-43), (-55)] (negateTwoDigits [43, 55]),
    testCase "test_negateTwoDigits2" $ assertEqual [] [(-43), 33, (-44), 23] (negateTwoDigits [43, (-33), 44, (-23)]),
    testCase "test_negateTwoDigits3" $ assertEqual [] [(-1), (-2), 3] (negateTwoDigits [(-1), (-2), 3]),
    testCase "test_negateTwoDigits4" $ assertEqual [] [0, (-10), (-20), 5] (negateTwoDigits [0, 10, 20, 5]),

    -- matches :: Integer -> [Integer] -> [Integer]
    testCase "test_matches1" $ assertEqual [] [3,3] (matches 3 [3,4,5,3]),
    testCase "test_matches2" $ assertEqual [] [] (matches 3 [4,5,7]),
    testCase "test_matches3" $ assertEqual [] [108, 108, 108] (matches 108 [72, 101, 108, 108, 111, 87, 111, 114, 108, 100]),

    -- element :: Integer -> [Integer] -> Bool
    testCase "test_element1" $ assertEqual [] True (element 1 [1,2,3]),
    testCase "test_element2" $ assertEqual [] True (element 3 [1,2,3]),
    testCase "test_element3" $ assertEqual [] False (element 3 []),

    -- tripleAll :: [Int] -> [(Int, Int, Bool)]
    testCase "test_absAll1" $ assertEqual [] [(1,1,False),(2,2,True)] (absAll [1..2]),
    testCase "test_absAll2" $ assertEqual [] [((-1),1,False), (0,0,True), (1,1,False)] (absAll [(-1)..1]),
    testCase "test_absAll3" $ assertEqual [] [] (absAll []),

    -- flip' :: [(Int, Int)] -> [(Int, Int)]
    testCase "test_flip1" $ assertEqual [] [(2,1),(3,2)] (flip' [(1,2),(2,3)]),
    testCase "test_flip2" $ assertEqual [] [(4,1)] (flip' [(1,4)]),
    testCase "test_flip3" $ assertEqual [] [] (flip' []),

    -- orderTriple :: (Int, Int, Int) -> (Int, Int, Int)
    testCase "test_orderTriple1" $ assertEqual [] (10,9,3) (orderTriple (3,9,10)),
    testCase "test_orderTriple2" $ assertEqual [] (9,9,1) (orderTriple (9,9,1)),
    testCase "test_orderTriple3" $ assertEqual [] (43,20,12) (orderTriple (43,12,20)),
    testCase "test_orderTriple4" $ assertEqual [] (3,2,2) (orderTriple (2,3,2)), 

    -- asciiNums :: String -> [Int]
    testCase "test_asciiNums1" $ assertEqual [] [104, 97, 115, 107, 101, 108, 108] (asciiNums "haskell"),
    testCase "test_asciiNums2" $ assertEqual [] [] (asciiNums ""),
    testCase "test_asciiNums3" $ assertEqual [] [72, 101, 108, 108, 111, 87, 111, 114, 108, 100] (asciiNums "HelloWorld"),
    testCase "test_asciiNums4" $ assertEqual [] [87, 67, 85, 32, 82, 97, 109] (asciiNums "WCU Ram"), 

    -- triads :: Int -> [(Int, Int, Int)]
    testCase "test_triads1" $ assertEqual [] False ((1,1,1) `elem` (triads 2)),
    testCase "test_triads2" $ assertEqual [] False ((3,4,5) `elem` (triads 2)), 
    testCase "test_triads3" $ assertEqual [] False ((1,1,1) `elem` (triads 10)),
    testCase "test_triads4" $ assertEqual [] True ((3,4,5) `elem` (triads 10)), 
    testCase "test_triads5" $ assertEqual [] True ((4,3,5) `elem` (triads 10)),
    testCase "test_triads6" $ assertEqual [] False ((5,4,3) `elem` (triads 10))
  ]
