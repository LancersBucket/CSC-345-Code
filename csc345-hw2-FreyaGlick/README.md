# Programming Assignment 2

[![Points badge](../../blob/badges/.github/badges/points.svg)](../../actions)



**Date Out:** Wednesday, Sept 10  
**Due Date:** Friday, Sept 19

----


This introductory programming assignment focuses specifically on (1) recursive Haskell functions, (2) basic pattern matching, (3) some usage of tuples and lists, and (4) list comprehensions.

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

Code the following Haskell functions in a file named `Prog2.hs`. I've given you the starter code already. Complete these functions by replacing the line `error "undefined"` in them. _In your solution, you may define helper functions that are called by the original function._

If you cannot figure out one of the problems, do not remove the function, but leave it in as `error`.

1. Write a function `tripleNumber` that multiplies a number by 3 but only if that number is smaller than or equal to 100.  
   `tripleNumber :: Integer -> Integer`
1. Write a function `twoSame` that returns True if at least two of the three arguments are equal, and False otherwise.  
   `twoSame :: Integer -> Integer -> Integer -> Bool`
1. Write a function trangleArea that computers the area of a triangle given its base and height.  
   `triangleArea :: Integer -> Integer -> Float`
1. Write a function `product'` that that uses recursion to compute the product of all numbers from 1 to n, the argument. Assume that n is greater than or equal to 1.
   `product' :: Integer -> Integer` 
1. Redefine the built-in infix || operator. Name your new function `or'` with prefix notation. Do not use guards in your definition, but rather utilize pattern matching. Use the wildcard _ pattern so that you only have two definitions, rather than the four definitions we would usually write given the truth table of ||.  
   `or' :: Bool -> Bool -> Bool`
1. Write a function `integerSqrt` that returns the integer square root of a positive integer n. (The integer square root is defined to be the largest integer whose square is less than or equal to n, i.e. the result of integerSqrt 15 is 3.).  
   `integerSqrt :: Integer -> Integer`
1. Write a function `exponent'` that recursively computes the result of raising some base number, b, to some exponent, e. (e.g. 2^8 = 256). You may not use the ^ or ** operators -- you must use recursion. This function will only be called on an exponent value that is a whole number (an integer that is 0 or greater).  
   `exponent' :: Integer -> Integer -> Integer`

## Submission instructions

Push your completed Haskell program to your GitHub. Verify the success of the autograding GitHub Action.
