{- ##################################
   Richard Burns
   Units Tests for Homework 5.

   Usage: ghci Prog2Tests; main

   Dependencies: cabal install tasty
                 cabal install tasty-hunit
   ################################## -}


import Prog5
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

tests :: TestTree
tests = testGroup "Tests" [unitTests]

dates = [(3,21,1998),(7,12,2018),(6,28,2003),(11,11,2011),(11,9,2007),(2,12,2002)]

unitTests = testGroup "Unit tests"
  [
    -- reverse' :: [a] -> [a]
    testCase "test_reverse1" $ assertEqual [] "" (reverse' ""),
    testCase "test_reverse2" $ assertEqual [] [10,9..1] (reverse' [1..10]),
    testCase "test_reverse3" $ assertEqual [] [1..5] (reverse' [5,4..1]),
    testCase "test_reverse4" $ assertEqual [] [(1,2),(1,3)] (reverse' [(1,3),(1,2)]),

    -- isPalindrome :: String -> Bool
    testCase "test_isPalindrome1" $ assertEqual [] False (isPalindrome "12345"),
    testCase "test_isPalindrome2" $ assertEqual [] True (isPalindrome "madam"),
    testCase "test_isPalindrome3" $ assertEqual [] False (isPalindrome "12322"),
    testCase "test_isPalindrome4" $ assertEqual [] True (isPalindrome "a"),
    testCase "test_isPalindrome5" $ assertEqual [] True (isPalindrome "aaa"),
    testCase "test_isPalindrome6" $ assertEqual [] True (isPalindrome "1221"),
    testCase "test_isPalindrome7" $ assertEqual [] False (isPalindrome "madamm"),    

    -- totalSeconds :: TimeStamp -> Int 
    testCase "test_totalSeconds1" $ assertEqual [] 19392 (totalSeconds (5,23,12)),
    testCase "test_totalSeconds2" $ assertEqual [] 18072 (totalSeconds (5,1,12)),
    testCase "test_totalSeconds3" $ assertEqual [] 1392 (totalSeconds (0,23,12)),
    testCase "test_totalSeconds4" $ assertEqual [] 48 (totalSeconds (0,0,48)), 

    -- isValid :: TimeStamp -> Bool 
    testCase "test_isValid1" $ assertEqual [] True (isValid (5,23,12)),
    testCase "test_isValid2" $ assertEqual [] False (isValid (5,(-1),12)), 
    testCase "test_isValid3" $ assertEqual [] True (isValid (0,23,59)),
    testCase "test_isValid4" $ assertEqual [] False (isValid (0,0,68)), 

    -- isShorter :: TimeStamp -> TimeStamp -> Int 
    testCase "test_isShorter1" $ assertEqual [] 0 (isShorter (5,23,12) (5,23,12)),
    testCase "test_isShorter2" $ assertEqual [] 1 (isShorter (4,23,12) (5,1,12)),
    testCase "test_isShorter3" $ assertEqual [] (-1) (isShorter (5,23,12) (5,10,57)),
    testCase "test_isShorter4" $ assertEqual [] 1 (isShorter (0,23,12) (0,23,16)),    

    -- time2Str :: TimeStamp -> String 
    testCase "test_time2Str1" $ assertEqual [] "05:23:12" (time2Str (5,23,12)),
    testCase "test_time2Str2" $ assertEqual [] "05:01:12" (time2Str (5,1,12)), 
    testCase "test_time2Str3" $ assertEqual [] "00:23:59" (time2Str (0,23,59)),
    testCase "test_time2Str4" $ assertEqual [] "10:30:48" (time2Str (10,30,48)), 

    -- monthLookup :: Int -> Int  
    testCase "test_monthLookup1" $ assertEqual [] 1 (monthLookup 15),
    testCase "test_monthLookup2" $ assertEqual [] 1 (monthLookup 31),
    testCase "test_monthLookup3" $ assertEqual [] 2 (monthLookup 32),
    testCase "test_monthLookup4" $ assertEqual [] 5 (monthLookup 135),
    testCase "test_monthLookup5" $ assertEqual [] 7 (monthLookup 195),    

    -- monthRange :: Int -> Int -> [Int]
    testCase "test_monthRange1" $ assertEqual [] [1,2,3,4] (monthRange 23 101),
    testCase "test_monthRange2" $ assertEqual [] [1..7] (monthRange 23 195),
    testCase "test_monthRange3" $ assertEqual [] [6,7] (monthRange 165 195),
    testCase "test_monthRange4" $ assertEqual [] [7] (monthRange 194 195),    

    -- validDate :: Date -> Bool 
    testCase "test_validDate1" $ assertEqual [] True (validDate (dates !! 0)),
    testCase "test_validDate2" $ assertEqual [] True (validDate (dates !! 1)),
    testCase "test_validDate3" $ assertEqual [] False (validDate (11,31,2018)),
    testCase "test_validDate4" $ assertEqual [] False (validDate (1,32,2018)),        

    -- season :: Date -> Season
    testCase "test_season1" $ assertEqual [] Spring (season (dates !! 0)),
    testCase "test_season2" $ assertEqual [] Summer (season (dates !! 1)),
    testCase "test_season3" $ assertEqual [] Fall (season (dates !! 4)),
    testCase "test_season4" $ assertEqual [] Winter (season (dates !! 5))    
       

  ]
