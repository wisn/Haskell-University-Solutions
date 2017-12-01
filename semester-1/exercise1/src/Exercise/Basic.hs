module Exercise.Basic (numberOne, numberTwo) where

import System.IO (hFlush, stdout)

numberOne :: IO ()
numberOne = putStrLn "Hello World"

numberTwo :: IO ()
numberTwo = do
  putStrLn "Hello, what is your name?"

  hFlush stdout

  name <- getLine :: IO String

  putStrLn $ "Nice to meet you " ++ name
