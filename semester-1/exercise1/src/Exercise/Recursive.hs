module Exercise.Recursive (numberThree) where

import System.IO (hFlush, stdout)

numberThree :: IO ()
numberThree = askForName []

askForName :: String -> IO ()
askForName [] = do
  putStrLn "Hello, what is your name?"

  hFlush stdout

  name <- getLine :: IO String

  askForName name

askForName "exit" = return ()
askForName name   = do
  putStrLn $ "Nice to meet you " ++ name

  askForName []
