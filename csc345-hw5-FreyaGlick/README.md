# Programming Assignment 5

[![Points badge](../../blob/badges/.github/badges/points.svg)](../../actions)




----

This programming assignment primarily focuses on (1) case expressions, (2) type synonyms, and (3) algebraic data types.

## Haskell Resources

Use, and only use, our "approved" course material: that is, the course notes, the Thompson text, other Haskell textbooks and tutorials, and our Discord server. **In coding your functions, you may only use what we have introduced so far in this course.** Using any other language features of Haskell will result in no credit for a given problem.

Googling and utilizing stackoverflow is not allowed, except for trying to decipher Haskell error messages. However, you really shouldn't be trying to use stackoverflow to understand any errors at this point in the course. Re-read your notes. Re-read them again. Study the text. Think hard. Googl'ing your way to a quick solution will only be a disservice to you. The end does not justify the means.

This is an individual programming assignment.

## Haskell Functions

Code the following Haskell functions in a file named `Prog5.hs`. I've given you the starter code already. Complete these functions by replacing the line `error "undefined"` in them. _In your solution, you may define helper functions that are called by the original function._

If you cannot figure out one of the problems, do not remove the function, but leave it in as `error`.

1. Write a function `reverse'` that reverses a list. You must use a case expression inside of your function definition. You may not use any built-in Haskell functions.  
   `reverse' :: [a] -> [a]`
1. Write a function `isPalindrome` that returns if some list can be read the same way forward and backward (e.g. "12345" and "madam").  
   `isPalindrome :: String -> Bool`

<hr>

In the following questions, we will inspect timestamps of videos. We'll represent the timestamp HH::MM::SS as a tuple triple `(Int, Int, Int)`.
1. Write a function `totalSeconds` that returns the number of total seconds that a video clip spans.  
   `totalSeconds :: TimeStamp -> Int`
1. Write a function `isValid` that returns whether a time stamp is valid: (1) is not negative in any of its parts, (2) there are no more than 59 seconds, and (3) there are no more than 59 minutes in its representation.  
   `isValid :: TimeStamp -> Bool`
1. Write a function `isShorter` that takes two timestamps and returns `1` if the first is shorter, `-1` if the second is shorter, and `0` if they are the same duration. Assume for this, and other problems unless otherwise specified, that the timestamps will always be valid (e.g. not negative, no more than 60 seconds in a minute, etc.).  
  `isShorter :: TimeStamp -> TimeStamp -> Int`
1. Write a function `time2Str` that returns a string representation of timestamp in the form `HH:MM:SS`. (Hint: look up and use the built-in function`show` as well as `++`.)  Add leading zeros if necessary, such that the hours, minutes, and seconds are always two digits. (Assume that hours in the timestamp argument will never be three digits.)  
   `time2Str :: TimeStamp -> String`

<hr>

In the following questions, we will inspect calendar dates. Some of them will use a tuple triple `(Int, Int, Int)` synonym named `Date` for the form (MM, DD, YYYY). We will also utilize a data type `Season` which is defined in the starter code.

1. Write a function `monthLookup` that takes a numeric day in the calendar year (between 1 and 365) and returns what month that day is in (excluding leap years).  
    `monthLookup :: Int -> Int`
1. Write a function `monthRange` that takes two numeric days (from previous problem) and returns an integer list of the months between those dates (inclusive), e.g.: `monthRange 23 101` should return `[1,2,3,4]`. If the second argument is earlier than the first argument, return the empty list.  
    `monthRange :: Int -> Int -> [Int]`
1. Write a function `validDate` that takes a date and returns whether it is valid (e.g. November 31 is not valid). Do not be concerned about leap years.
    `validDate :: Date -> Bool`
1. Write a function season that takes a date and returns the season that the date is in.  
    `season :: Date -> Season`

## Submission instructions

Push your completed Haskell program to your GitHub. Verify the success of the autograding GitHub Action.
