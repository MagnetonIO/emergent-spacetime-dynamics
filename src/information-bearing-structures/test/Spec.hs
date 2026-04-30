-- |
-- Module      : Spec
-- Description : Test suite for the Law IV companion package
-- Copyright   : (c) MagnetonIO Research 2026
-- License     : BSD-3-Clause
module Main (main) where

import           Law4.Properties (allProperties)
import           System.Exit     (exitFailure, exitSuccess)

main :: IO ()
main = do
  let results = allProperties
      failed  = [ name | (name, ok) <- results, not ok ]
  mapM_ printResult results
  if null failed
    then do
      putStrLn $ "All " ++ show (length results) ++ " tests passed."
      exitSuccess
    else do
      putStrLn ""
      putStrLn "FAILED:"
      mapM_ (\name -> putStrLn $ "  - " ++ name) failed
      exitFailure
  where
    printResult (name, ok) =
      putStrLn $ "[" ++ (if ok then "PASS" else "FAIL") ++ "] " ++ name
