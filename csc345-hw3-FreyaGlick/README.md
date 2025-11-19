# Programming Assignment 3

[![Points badge](../../blob/badges/.github/badges/points.svg)](../../actions)



**Date Out:** Friday, February 14  
**Due Date:** Wednesday, February 26

----

This introductory programming assignment focuses on additional practices using the standard Haskell functions that operate on lists and list comprehensions.

## Haskell Resources

Use, and only use, our "approved" course material: that is, the course notes, the Thompson text, other Haskell textbooks and tutorials, and our Discord server. **In coding your functions, you may only use what we have introduced so far in this course.** Using any other language features of Haskell will result in no credit for a given problem.

Googling and utilizing stackoverflow is not allowed, except for trying to decipher Haskell error messages. However, you really shouldn't be trying to use stackoverflow to understand any errors at this point in the course. Re-read your notes. Re-read them again. Study the text. Think hard. Googl'ing your way to a quick solution will only be a disservice to you. The end does not justify the means.

This is an individual programming assignment.

## GitHub Classroom Workflow

Like in the ungraded HW0 (if you did it), you will be engaging in the following workflow to complete your assignments in this course:

0. Create a GitHub account if necessary.

1. Accept the assignment in our GitHub Classroom. An assignment link will be posted on our course homepage.

2. GitHub then copies the starter code of the assignment from my GitHub repository, into your own private repository. (It is private so no one else can view your code, except me. It also will not count against repo limit on your GitHub account.)

3. **Clone** (download) the project starter code onto your local machine.

4. Code/run/test your code locally.

5. When you are ready to submit the assignment, **commit** and **push** back to GitHub.

6. Check the Actions for your project repository -- the autograded test results.

7. You may resubmit as often as you would like before the assignment deadline.

There is no expectation that you have any prior experience or knowledge with using GitHub, version control systems, or GitHub Classroom. So, at this early point in the course, it's perfectly normal (and expected) that you'll have questions. Ask clarification questions about the GitHub Classroom Workflow on our course Discord server, and collaborate on the troubleshooting with your peers.

## Haskell Functions

Code the following Haskell functions in a file named `Prog3.hs`. I've given you the starter code already. Complete these functions by replacing the line `error "undefined"` in them. _In your solution, you may define helper functions that are called by the original function._

If you cannot figure out one of the problems, do not remove the function, but leave it in as `error`.

1. Write a function `swap` that swaps the characters in a quintuple (5-tuple) in the following way: the first element swaps with the last, the second swaps with the fourth, and the middle doesn't change. Only use pattern matching. You may not call any other functions.  
   `swap :: (Char, Char, Char, Char, Char) -> (Char, Char, Char, Char, Char)`
1. Write a function `negateTwoDigits` that uses list comprehension to take a list of integers and return a list of integers with all of the two-digit integers negated.  
   `negateTwoDigits :: [Integer] -> [Integer]`
1. Write a function `matches` that uses list comprehension to pick out all instances of an integer n from a list.  
`matches :: Integer -> [Integer] -> [Integer]`  
Example usage:  
`matches 3 [3,4,5,3]` should return `[3,3]`  
`matches 3 [4,5,7]` should return `[]`  
1. Use the `matches` function in the above problem to write a function `element` that uses list comprehension to return True if an element is a member of a list, False otherwise. (You may not use the `elem` function that is already defined in Haskell.).  
   `element :: Integer -> [Integer] -> Bool`
1. Write a function `absAll` that takes a list of ints, and returns a list of triples, such that the first element in each pair is in the original number, the second element is the absolute value of the original number, and the third element is whether the number is even.  
   `absAll :: [Int] -> [(Int, Int, Bool)]`
1. Write a function `flip'` ("flip prime") that takes a list of pairs, and returns a list of pairs, with the pairs flipped (the first item becomes the second item, and vice versa).  
   `flip' :: [(Int, Int)] -> [(Int, Int)]`
1. Write a function `orderTriple` that takes a triple, and returns a version in decreasing order. (Hint: you may want to define other helper functions such as `maxOfThree`, `middleOfThree`, and `minOfThree`.)  
   `orderTriple :: (Integer, Integer, Integer) -> (Integer, Integer, Integer)`
1. Write a function `asciiNums` that takes a String and returns a list of the ascii values of characters in that string. (Hint: which built-in function have we seen already that returns the ascii value of a character?)
   `asciiNums :: String -> [Int]`
1. Write a function `triads` that generates a list of integer triples, such that $x^2 + y^2 = z^2$ and $x,y,z <= n$. (Hint: use a list comprehension with multiple generators.)  
   `triads :: Int -> [(Int,Int,Int)]`


## Submission instructions

Push your completed Haskell program to your GitHub. Verify the success of the autograding GitHub Action.
