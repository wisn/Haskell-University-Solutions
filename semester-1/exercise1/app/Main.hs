module Main where

import System.Environment (getArgs)

import qualified Exercise.App as App (run)

main :: IO ()
main = App.run =<< getArgs
