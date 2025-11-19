# Programming Assignment 7

[![Points badge](../../blob/badges/.github/badges/points.svg)](../../actions)




----

This programming assignment focuses specifically on type classes, recursive data types, and higher order functions.

## Haskell Resources

Use, and only use, our "approved" course material: that is, the course notes, the Thompson text, other Haskell textbooks and tutorials, and our Discord server. **In coding your functions, you may only use what we have introduced so far in this course.** Using any other language features of Haskell will result in no credit for a given problem.

Googling and utilizing stackoverflow is not allowed, except for trying to decipher Haskell error messages. However, you really shouldn't be trying to use stackoverflow to understand any errors at this point in the course. Re-read your notes. Re-read them again. Study the text. Think hard. Googl'ing your way to a quick solution will only be a disservice to you. The end does not justify the means.

This is an individual programming assignment.

## Haskell Functions

Code the following Haskell functions in a file named `Prog7.hs`. I've given you the starter code already. Complete these functions by replacing the line `error "undefined"` in them. _In your solution, you may define helper functions that are called by the original function._

If you cannot figure out one of the problems, do not remove the function, but leave it in as `error`.

1. Write a function `unique` that returns the list of elements that occur exactly once in the argument list. A helper function, or functions, may be useful.  
   `unique :: Eq a => [a] -> [a]`
1. Write a function `piglatinize` that returns a word into its piglatin form: if it begins with a vowel, add to the end "yay", else move non-vowels to the end of the string until a vowel is at the front and then add to the end "ay". The word arguments are guaranteed to have a vowel (a, e, i, o, or u) and not begin with the letter y.  
   `piglatinize :: String -> String`

<hr>

Consider the following type:

   ```haskell
   data Expr = Val Int
             | Add Expr Expr
             | Sub Expr Expr
             | Mul Expr Expr
             | Div Expr Expr
             | Mod Expr Expr
   ```

1. Write a function `value1` that evaluates an expression.  
   `value1 :: Expr -> Int`
1. Write a function `value2` that evaluates an expression, but returns `Nothing` if there is a division by zero scenario.  
   `value2 :: Expr -> Maybe Int`
 
<hr>

1. Write a function `sumSqNeg` that computes the "sum of squares of negatives". _You must use one or more higher-order functions: `map`, `filter`, `foldr`._  
  `sumSqNeg :: [Int] -> Int`
1. Write a function `containing` (without any higher order functions) that returns whether each element in the first list is also in the second list.  
  `containing :: Eq a => [a] -> [a] -> Bool`
1. Write a function `total` that applies the function (first argument) to every element in the list (second argument) and sums the result. _You must use one or more higher-order functions: `map`, `filter`, `foldr`._
  `total :: (Int -> Int) -> [Int] -> Int`
1. Write a function `containing'` (with higher order functions) that returns whether each element in the first list is also in the second list. _You must use one or more higher-order functions: `map`, `filter`, `foldr`._  
  `containing' :: Eq a => [a] -> [a] -> Bool`
1. Write a function `lengths` that returns a list of lengths of the given strings. _You must use one or more higher-order functions: `map`, `filter`, `foldr`._
  `lengths :: [String] -> [Int]`

## Submission instructions

Push your completed Haskell program to your GitHub. Verify the success of the autograding GitHub Action.
