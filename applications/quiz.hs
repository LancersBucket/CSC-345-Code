module Main where

import System.IO

type QuestionAnswer = (String, String)

quiz = [("q1?", "a1"), ("q2?","a2"),("q3?","a3")]

askQuestions :: [QuestionAnswer] -> [Bool] -> IO String
askQuestions [] x = return (show (length (filter (==True) x)) ++ "/" ++ show (length x))
askQuestions (y:ys) x = do
    putStr (show (length x +1))
    putStr ". "
    result <- (askQuestion y)
    askQuestions ys (x ++ [result])

askQuestion :: QuestionAnswer -> IO Bool
askQuestion (q,a) = do
    putStr (q ++ " ")
    hFlush stdout
    answer <- getLine
    return (answer == a)

main = do
    putStr "Enter your name: "
    hFlush stdout
    name <- getLine
    result <- askQuestions quiz []
    putStrLn (name ++ ", your score is " ++ result)