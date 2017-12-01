module Exercise.App (run) where

import qualified Exercise.Basic as Basic
import qualified Exercise.Monadic as Monadic
import qualified Exercise.Recursive as Recursive

run :: [String] -> IO ()
run []   = Basic.numberOne
run (t:_)
  | t == "1"  = Basic.numberOne
  | t == "2"  = Basic.numberTwo
  | t == "3"  = Recursive.numberThree
  | t == "3a" = Recursive.numberThree
  | t == "3b" = Monadic.numberThree
  | otherwise = Basic.numberOne
