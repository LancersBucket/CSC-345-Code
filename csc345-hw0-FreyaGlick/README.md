# Programming Assignment 0

[![Points badge](../../blob/badges/.github/badges/points.svg)](../../actions)



**Date Out:** Friday, August 29  
**Due Date:** Friday, September 5

----

This introductory programming assignment tasks you to write a couple of basic Haskell functions, and then to submit them using GitHub Classroom.

***This assignment will not be graded.*** However, it's like a normal assignment in every other way: there is a deadline for you to aim for, you'll be writing Haskell code, you'll be running automatic tests on Haskell code, and you'll be submitting via GitHub.

**There is no expectation that you have any prior experience or knowledge with using GitHub, version control systems, or GitHub Classroom.** I'll explain and demonstrate what you need to know to do this. However, there is a learning curve with using any distributed version control system, such as GitHub, so it's perfectly normal (and expected) that you'll have questions and for there to be some learning pains. **Ask clarification questions on our course Discord server, and collaborate on the troubleshooting with your peers.** 

## GitHub Classroom Workflow

As I explained in class, you will be engaging in the following workflow to complete your assignments in this course:

0. Create a GitHub account if necessary.
1. Accept the assignment in our GitHub Classroom. An assignment link will be posted on our course homepage.
2. GitHub then copies the starter code of the assignment from my GitHub repository, into your own private repository. (It is **private** so no one else can view your code, except me. It also will not count against repo limit on your GitHub account.)
3. **Clone** (download) the project starter code onto your local machine. 
4. Code/run/test your code locally. 
5. When you are ready to submit the assignment, **commit** and **push** back to GitHub. 
6. Check the _Actions_ for your project repository -- the autograded test results.  
7. You may resubmit as often as you would like before the assignment deadline.

## Haskell Functions

Code the following Haskell functions in a file named `Prog0.hs`. I've given you the starter code already. Complete these functions
by replacing the line `error "undefined"` in them.

1. Write a function `isPositive` that returns whether a given floating pt. number is greater than or equal to zero.  
   `isPositive :: Float -> Bool`
   
2. Write a function `addTwoNumbers` that returns the addition of two numbers.  
   `addTwoNumbers :: Float -> Float -> Float`

## Submission instructions

Push your completed Haskell program to your GitHub. Verify the success of the autograding GitHub Action.
