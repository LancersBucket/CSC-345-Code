# Programming Assignment 4

[![Points badge](../../blob/badges/.github/badges/points.svg)](../../actions)




----

This introductory programming assignment focuses on additional practice using recursion.

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

Code the following Haskell functions in a file named `Prog4.hs`. I've given you the starter code already. Complete these functions by replacing the line `error "undefined"` in them. _In your solution, you may define helper functions that are called by the original function._

If you cannot figure out one of the problems, do not remove the function, but leave it in as `error`.

**<u>In the following functions, use only recursion and standard built-in functions (and helper functions) as indicated in this README. No list comprehensions allowed.</u>** (Observe the similarity between HW3 and HW4. Do you like recursion better?)

1. Write a function `sumLastPart` which, <u>only using list library functions (no list comprehension)</u>, returns the sum of the last $n$ numbers in the list, where n is the first argument to the function. (Assume that there are always at least $n$ numbers in the list. For this problem and the others, assume that no error checking is necessary unless otherwise specified. Do feel free to incorporoate error checking into your definition if you would like, but this is optional.)  
   `sumLastPart :: Int -> [Int] -> Int`
1. Write a function `middleProduct` which, <u>only using list library functions (no list comprehension)</u>, returns the product of the interior items in the list, that is, everything except the first and last item. Assume there are always at least three numbers in the list.  
   `middleProduct :: [Int] -> Int`   
1. Write a function `init'` that has identical behavior to the `init` function. <u>In your definition, you may only use list library functions that we covered (no list comprehension).</u> And obviously, you may not use `init`.  
   `init' :: [Int] -> [Int]`
1. Write a *recursive* function `tripleAll` that takes a list of ints, and returns a list of pairs, such that the first element in each pair is in the original number, and the second element is the original number tripled.  
   `tripleAll :: [Int] -> [(Int, Int)]`
1. Write a *recursive* function `flip'` that takes a list of pairs, and returns a list of pairs, with the pairs flipped (the first item becomes the second item, and vice versa).  
   `flip' :: [(Int, Int)] -> [(Int, Int)]`
1. Write a *recursive* function `sumLastPart'` that is identical to the first problem in this homework, but is implemented
recursively rather than with list library functions.
   `sumLastPart' :: Int -> [Int] -> Int`
1. Write a *recursive* function `middleProduct'` that is identical to the second problem in this homework, but is implemented
recursively rather than with list library functions.
   `middleProduct' :: [Int] -> Int`  
1. Write a *recursive* function `init''` that is identical to the third problem in this homework, but is implemented
recursively rather than with list library functions.
   `init'' :: [Int] -> [Int]`  
1. Write a *recursive* function `iSort'` that uses insertion sort to sort a list of pairs `(String, Int)` where only the first element (the `Int` part of the pair) is to be considered during the sorting process.  
   `iSort' :: [(String, Int)] -> [(String, Int)]`

## Submission instructions

Push your completed Haskell program to your GitHub. Verify the success of the autograding GitHub Action.
