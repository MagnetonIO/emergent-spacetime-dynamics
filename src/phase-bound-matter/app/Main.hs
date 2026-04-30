{- |
Module      : Main
Description : Demonstration of the Law II Haskell package.

Runnable demonstrations of the principal results of Paper II:
phase classification, group cohomology of small groups, the
toric-code stabiliser code, and the topological entanglement entropy.
-}
module Main where

import           PhaseBoundMatter.Anyon
import           PhaseBoundMatter.Entropy
import           PhaseBoundMatter.Functor
import           PhaseBoundMatter.GroupCohomology
import           PhaseBoundMatter.Phase
import           PhaseBoundMatter.Symmetry
import           PhaseBoundMatter.ToricCode

main :: IO ()
main = do
  putStrLn "=== Law II : Phase-bound Matter ==="
  putStrLn "  (Modular framework, Paper II of IV)"
  putStrLn ""

  -- 1. Phase invariants of representative phases
  putStrLn "## 1. Phase invariants"
  let phases = [TrivialPhase, LandauPhase "Z2-symmetric", SPTPhase "Haldane",
                ToricCode, DoubledFib]
  mapM_ printPhase phases

  -- 2. Group cohomology of Z_2
  putStrLn ""
  putStrLn "## 2. Group cohomology"
  putStrLn "  Trivial 2-cocycle on Z_2 is a coboundary?"
  putStrLn $ "    isCocycle2 trivial = " ++ show (isCocycle2 (trivialCocycle2 :: Cochain2 Z2))
  putStrLn $ "    cohomologyClass trivial = "
             ++ show (cohomologyClass (trivialCocycle2 :: Cochain2 Z2))
  putStrLn "  Haldane 2-cocycle on Z_2:"
  putStrLn $ "    isCocycle2 haldane = " ++ show (isCocycle2 haldaneCocycle)
  putStrLn $ "    cohomologyClass haldane = "
             ++ show (cohomologyClass haldaneCocycle)

  -- 3. Toric code on a 2x2 torus
  putStrLn ""
  putStrLn "## 3. Toric code (2x2 torus)"
  let l = 2
  putStrLn $ "  Lattice size L = " ++ show l
  putStrLn $ "  #edges     = " ++ show (numEdges l)
  putStrLn $ "  #vertices  = " ++ show (numVertices l)
  putStrLn $ "  #plaquettes= " ++ show (numPlaquettes l)
  putStrLn $ "  #stabilisers (independent) = " ++ show (numStabilisers l)
  putStrLn $ "  #logical qubits            = " ++ show (numLogical l)
  putStrLn $ "  GSD on torus               = " ++ show (groundStateDegeneracy l)

  -- 4. Topological entanglement entropy
  putStrLn ""
  putStrLn "## 4. Topological entanglement entropy"
  putStrLn $ "  gamma (toric code)              = log 2 = "
             ++ show gammaToricCode
  putStrLn $ "  gamma (doubled Fibonacci)       = log D = "
             ++ show (topologicalEE doubledFibonacciMTC)
  putStrLn $ "  Kitaev-Preskill sum (boundary law-only) = "
             ++ show (kitaevPreskillSum (\boundary -> 0.3 * boundary) 4.0)

  -- 5. Functorial composition Law I -> Law II
  putStrLn ""
  putStrLn "## 5. Functorial composition Law I -> Law II"
  let toricHam = Hamiltonian "ToricCodeHamiltonian" ToricCode 0.0
      lawIToII = liftCommutes toricHam toricCodeMTC
  putStrLn $ "  liftCommutes (toric-code Hamiltonian, toric-code MTC) = "
             ++ show lawIToII
  putStrLn ""
  putStrLn "Done."

printPhase :: Phase -> IO ()
printPhase ph = do
  putStrLn $ "  Phase: " ++ phaseLabel ph
  mapM_ (\inv -> putStrLn $ "    "
                            ++ invariantName inv
                            ++ " = "
                            ++ show (invariantValue inv))
        (phaseInvariants ph)
