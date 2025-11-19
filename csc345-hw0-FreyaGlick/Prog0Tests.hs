{- ##################################
Richard Burns
Units Tests for Homework 0.

Usage: ghci Prog0Tests; main

Dependencies: cabal update
              cabal install tasty --lib
              cabal install tasty-hunit --lib

   ################################## -}


import Prog0
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

      -- isPositive :: Integer -> Bool
      testCase "test_isPositive1" $ assertEqual [] True (isPositive 3),
      testCase "test_isPositive2" $ assertEqual [] False (isPositive (-3)),
      testCase "test_isPositive3" $ assertEqual [] True (isPositive 0),

      -- addTwoNumbers :: Float -> Float -> Float
      testCase "test_addTwoNumbers1" $ assertEqual [] 7 (addTwoNumbers 3 4),
      testCase "test_addTwoNumbers2" $ assertEqual [] (-6.5) (addTwoNumbers (-3) (-3.5)),
      testCase "test_addTwoNumbers3" $ assertEqual [] 4.25 (addTwoNumbers 0 4.25)


  ]
