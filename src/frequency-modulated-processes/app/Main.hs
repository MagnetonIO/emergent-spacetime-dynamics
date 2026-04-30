-- |
-- Module      : Main
-- Description : Demonstration executable for Law III companion library.
--
-- Run with:  cabal run fmp-demo
--
-- This prints:
--   1. The 0th and 1st Magnus expansion entries for a small (1-qubit)
--      driven system, showing high-frequency vs. low-frequency behaviour.
--   2. The stroboscopic magnetisation of a 4-site kicked Ising chain at
--      the perfect-pi-pulse point, exhibiting period-2T oscillation
--      (a Z_2 discrete time crystal).
module Main (main) where

import Floquet.Linalg
import Floquet.Magnus
import Floquet.Types
import Floquet.KickedIsing

-- | Format a complex matrix for human reading.
showM :: Matrix -> String
showM (Matrix rs) =
  unlines
    [ unwords [ printC c | c <- row ]
    | row <- rs
    ]
  where
    printC (Complex a b) =
      let f = padFix 6
      in f a ++ (if b >= 0 then "+" else "-") ++ f (abs b) ++ "i"
    padFix n x =
      let s = take n (show (fromIntegral (round (x * 1e4) :: Int) / 1e4 :: Double))
      in s ++ replicate (max 0 (n - length s)) ' '

main :: IO ()
main = do
  putStrLn "=== Law III: Frequency-modulated Processes - demo ==="
  putStrLn ""

  -- Demo 1: a single-qubit driven system. Hx = sigma^x; Hz = sigma^z.
  -- Period T. The 0th-order Magnus is (1/T)(T/2 sigma^x + T/2 sigma^z) =
  -- (sigma^x + sigma^z)/2 (independent of T). The 1st-order term scales
  -- with T because the drive is far from high-frequency.
  let demoSys = kickedTwoStep 1.0 pauliX pauliZ
  putStrLn "Demo 1: single-qubit kicked drive H_x then H_z, T=1"
  putStrLn "0th-order Magnus (time-averaged Hamiltonian):"
  putStr (showM (magnusZerothOrder demoSys))
  putStrLn "1st-order Magnus correction:"
  putStr (showM (magnusFirstOrder demoSys))
  putStrLn ""

  -- Demo 2: kicked Ising chain DTC.
  let l       = 4
      tPeriod = 1.0
      hx      = pi / tPeriod   -- gives hx*T/2 = pi/2 (perfect pi-pulse)
      jcoup   = 0.7            -- Ising coupling (any value)
      hzs     = replicate l 0.3  -- uniform longitudinal field (toy MBL stand-in)
      sys     = kickedIsing l tPeriod hx jcoup hzs
      dimM    = 2 ^ l :: Int
      psi0    = [ Complex 1 0 ] ++ replicate (dimM - 1) (Complex 0 0)
        -- |0000>: all spins up in sigma^z basis.
      nSteps  = 10
      magList = [ magnetisationZ0 l (stroboscopic sys n psi0)
                | n <- [0 .. nSteps] ]
  putStrLn "Demo 2: 4-site kicked Ising DTC, stroboscopic <sigma^z_0(nT)>"
  mapM_ (\(n,m) ->
            putStrLn (replicate 4 ' '
                      ++ "n=" ++ show n
                      ++ "  <sigma^z_0> = " ++ show m))
    (zip [0 :: Int ..] magList)
  putStrLn ""
  putStrLn "Expected: (-1)^n m_0 oscillation -- the period-2T DTC signature."
