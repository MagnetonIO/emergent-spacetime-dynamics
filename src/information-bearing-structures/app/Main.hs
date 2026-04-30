-- |
-- Module      : Main
-- Description : Demonstrative entry-point for Law IV companion code
-- Copyright   : (c) MagnetonIO Research 2026
-- License     : BSD-3-Clause
--
-- Runs a showcase of the Law IV companion code: prints stabiliser-code
-- descriptions, computes the discrete Ryu--Takayanagi cut for a small
-- HaPPY tiling, and prints the Fisher metric of the Gaussian family.
module Main (main) where

import           Law4.Fisher
import           Law4.HaPPY
import           Law4.Properties
import           Law4.Stabiliser

main :: IO ()
main = do
  putStrLn "================================================================"
  putStrLn "Law IV: Information-bearing Structures -- companion demo"
  putStrLn "================================================================"

  putStrLn ""
  putStrLn "--- Stabiliser codes -------------------------------------------"
  mapM_ (putStrLn . describe)
    [ bitFlipCode, phaseFlipCode, fiveQubitCode, steaneCode, shorCode ]

  putStrLn ""
  putStrLn "--- HaPPY toy tiling -------------------------------------------"
  let single = singleTile
      pair   = twoTilePair
  putStrLn $ "single tile: # boundary legs = " ++ show (length (tilingBoundary single))
  putStrLn $ "single tile: cut for one boundary leg = "
             ++ show (boundaryCut single [(0,1)])
  putStrLn $ "two-tile pair: cut for tile-0 boundary = "
             ++ show (boundaryCut pair [(0,1),(0,2),(0,3),(0,4)])
  putStrLn $ "two-tile pair: discrete RT entropy (d=2) = "
             ++ show (discreteRT pair [(0,1),(0,2),(0,3),(0,4)] 2)

  putStrLn ""
  putStrLn "--- Fisher metric on the Gaussian family -----------------------"
  let p = GaussianParams 0 1
  putStrLn $ "params (mu, sigma) = (0, 1)"
  putStrLn $ "Fisher metric = "       ++ show (gaussianFisher p)
  putStrLn $ "det g = "                ++ show (gaussianFisherDeterminant p)
  putStrLn $ "Ricci scalar = "         ++ show (gaussianRicciScalar p)

  putStrLn ""
  putStrLn "--- Property checks --------------------------------------------"
  mapM_ printResult allProperties
  let allPassed = all snd allProperties
  putStrLn ""
  putStrLn $ if allPassed
               then "All " ++ show (length allProperties)
                          ++ " property checks passed."
               else "FAILURE: some property checks did not pass."

  where
    printResult (name, ok) =
      putStrLn $ "  [" ++ (if ok then "PASS" else "FAIL") ++ "] " ++ name
