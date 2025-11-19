# Programming Assignment 1

[![Points badge](../../blob/badges/.github/badges/points.svg)](../../actions)



**Date Out:** Wednesday, January 31  
**Due Date:** Wednesday, February 12

----

This introductory programming assignment tasks you with writing Haskell functions that utilize arithmetic operators and conditionals/guards. Using any other language features of Haskell will result in no credit for a given problem.

This is an individual programming assignment.

## Haskell Resources

Use, and only use, our "approved" course material: that is, the course notes, the Thompson text, other Haskell textbooks and tutorials, and our Discord server. **In coding your functions, you may only use what we have introduced so far in this course.** 

Googling and utilizing stackoverflow is not allowed, except for trying to decipher Haskell error messages. However, you really shouldn't be trying to use stackoverflow to understand any errors at this point in the course. Re-read your notes. Re-read them again. Study the text. Think hard. Googl'ing your way to a quick solution will only be a disservice to you. The end does not justify the means.

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

Code the following Haskell functions in a file named `Prog1.hs`. I've given you the starter code already. Complete these functions by replacing the line `error "undefined"` in them. _In your solution, you may define helper functions that are called by the original function._

If you cannot figure out one of the problems, do not remove the function, but leave it in as `error`.

1. Write a function `isThreeDigitPositive` that returns whether an integer is a three digit positive number.
   `isThreeDigitPositive :: Int -> Bool`
   
1. Write a function `dividesEvenly` that returns whether the second integer divides evenly into the first integer.  
  `dividesEvenly 10 3` should return `False`.  
  `dividesEvenly :: Integer -> Integer -> Bool`
  
1. Write a function `middle` that returns the 2nd greatest of three given int arguments.  
   `middle 3 5 3` should return `3`.  
   `middle :: Int -> Int -> Int -> Int`
   
1. Write a function `nor` that computes the NOR gate of two boolean arguments. (Look up "nor" if you do not know what it is.)  
   `nor :: Bool -> Bool -> Bool`
   
1. Write a function `f2c` that converts a temperature in Fahrenheit into Celcius using the equation:   
   _c = (f-32)*(5/9)_  
   `f2c :: Float -> Float`
   
1. Write a function `floorDecimal` that calculates the floor of a float, but returns it as a float rather than an integer.  
   `floorDecimal 15.1` should return `15.0`.  
   `floorDecimal :: Float -> Float`
   
1. Write a function `letterGrade` that returns the equivalent letter grade for a given numerical integer grade, per the syllabus for this course.  
   `letterGrade :: Integer -> String`
   
1. Write a function `averageThree` to return the average of three integers.  
   `averageThree :: Integer -> Integer -> Integer -> Float`
   
1. Write a function `howManyAboveAverage` that returns how many of three integer inputs are above its average value. (Hint: utilize the `averageThree` function.)  
    `howManyAboveAverage 3 4 11` should return `1`.  
    `howManyAboveAverage :: Integer -> Integer -> Integer -> Integer`

## Submission instructions

Push your completed Haskell program to your GitHub. Verify the success of the autograding GitHub Action.
