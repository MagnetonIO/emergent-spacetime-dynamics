{- |
Module      : Spec
Description : Property tests for the Law II Haskell package.

Tests we run:
  T1. Trivial cocycles are cocycles, and lie in the trivial cohomology class.
  T2. Coboundary of any 1-cochain is a cocycle.
  T3. The Haldane 2-cocycle on Z_2 IS a cocycle.
  T4. Group axioms hold for Z_2, Z_3, Z_2 x Z_2.
  T5. The toric code on a 2x2 torus has GSD = 4 (i.e., 2 logical qubits).
  T6. Phase invariance under symmetric perturbations: small Hamiltonian
      perturbations preserve the phase representative (mock test).
  T7. The matter-information functor M agrees with the MTC-derived
      topological entanglement entropy.
-}
module Main where

import           Control.Monad (unless)
import           System.Exit   (exitFailure, exitSuccess)

import           PhaseBoundMatter.Anyon
import           PhaseBoundMatter.Entropy
import           PhaseBoundMatter.Functor
import           PhaseBoundMatter.GroupCohomology
import           PhaseBoundMatter.Phase
import           PhaseBoundMatter.Symmetry
import           PhaseBoundMatter.ToricCode

-- | A tiny test harness.
data TestCase = TestCase
  { tcName :: String
  , tcRun  :: IO Bool
  }

runTests :: [TestCase] -> IO ()
runTests ts = do
  results <- mapM runOne ts
  let passed = length (filter id results)
      total  = length results
  putStrLn ""
  putStrLn $ "Passed " ++ show passed ++ " / " ++ show total
  if passed == total then exitSuccess else exitFailure
  where
    runOne tc = do
      ok <- tcRun tc
      putStrLn $ (if ok then "[PASS] " else "[FAIL] ") ++ tcName tc
      return ok

main :: IO ()
main = runTests
  [ TestCase "T1. trivial 2-cocycle on Z_2 is a cocycle"
             (return $ isCocycle2 (trivialCocycle2 :: Cochain2 Z2))
  , TestCase "T1b. trivial 2-cocycle on Z_2 is in trivial class"
             (return $ cohomologyClass (trivialCocycle2 :: Cochain2 Z2)
                       == Plus)
  , TestCase "T2. coboundary of any 1-cochain is a 2-cocycle (Z_2)"
             $ return $ all (isCocycle2 . (coboundary1 :: (Z2 -> Z2Sign)
                                              -> Cochain2 Z2))
                            [\_ -> Plus, \_ -> Minus,
                             \g -> if g == Z2X then Minus else Plus]
  , TestCase "T3. Haldane 2-cocycle is a cocycle"
             (return $ isCocycle2 haldaneCocycle)
  , TestCase "T4a. Z_2 multiplication: x*x = e"
             (return $ gMul Z2X Z2X == Z2E)
  , TestCase "T4b. Z_3 r * r^2 = e"
             (return $ gMul Z3R Z3R2 == Z3E)
  , TestCase "T4c. Z_2 x Z_2 has 4 elements"
             (return $ length (gElements :: [Z2xZ2]) == 4)
  , TestCase "T5a. Toric code 2x2: 8 edges"
             (return $ numEdges 2 == 8)
  , TestCase "T5b. Toric code 2x2: 6 independent stabilisers"
             (return $ numStabilisers 2 == 6)
  , TestCase "T5c. Toric code 2x2: 2 logical qubits"
             (return $ numLogical 2 == 2)
  , TestCase "T5d. Toric code 2x2: GSD = 4"
             (return $ groundStateDegeneracy 2 == 4)
  , TestCase "T5e. Toric code 4x4: GSD = 4"
             (return $ groundStateDegeneracy 4 == 4)
  , TestCase "T6. Phase invariant under symmetric perturbations"
             $ return $ samePhase
                          (Hamiltonian "H0" ToricCode 0.0)
                          (Hamiltonian "H_eps" ToricCode 0.05)
  , TestCase "T6b. Trivial phase distinct from toric code"
             $ return $ not $ samePhase
                          (Hamiltonian "H_trivial" TrivialPhase 0.0)
                          (Hamiltonian "H_TC" ToricCode 0.0)
  , TestCase "T7a. Toric-code TEE gamma = log 2"
             (return $ abs (gammaToricCode - log 2) < 1e-12)
  , TestCase "T7b. Toric-code MTC: total quantum dim = 2"
             (return $ abs (totalQuantumDimension toricCodeMTC - 2.0) < 1e-12)
  , TestCase "T7c. Doubled Fibonacci: D = 1 + phi^2"
             (return $
                let phi = (1 + sqrt 5) / 2
                    expected = 1 + phi*phi
                in abs (totalQuantumDimension doubledFibonacciMTC - expected) < 1e-12)
  , TestCase "T7d. Functorial lift consistency (toric code)"
             $ return $ liftCommutes
                          (Hamiltonian "ToricCodeHamiltonian" ToricCode 0.0)
                          toricCodeMTC
  , TestCase "T8. Kitaev-Preskill sum on a pure boundary law gives 0"
             $ return $ abs (kitaevPreskillSum (\b -> 0.3 * b) 4.0) < 1e-12
  , TestCase "T9. M(toric code) contains gamma = log 2"
             $ return $
                 let invs = matterInformationFunctor
                              (Hamiltonian "TC" ToricCode 0.0)
                     g    = lookup "topological EE gamma"
                              [(invariantName i, invariantValue i) | i <- invs]
                 in case g of
                      Just v  -> abs (v - log 2) < 1e-12
                      Nothing -> False
  ]
