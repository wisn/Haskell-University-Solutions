module Exercise.Monadic (numberThree) where

import Control.Monad (forever)
import System.Exit (exitSuccess)
import System.IO (hFlush, stdout)

numberThree :: IO ()
numberThree = do
  forever $ do
    putStrLn "Hello, what is your name?"

    hFlush stdout

    name <- getLine :: IO String

    if name == "exit"
      then exitSuccess
      else putStrLn $ "Nice to meet you " ++ name
