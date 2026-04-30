-- |
-- Module      : Spec
-- Description : Property tests for the Law III companion library.
--
-- We deliberately use a hand-rolled "expect / pass / fail" harness rather
-- than QuickCheck or Hspec so the package has zero external dependencies
-- besides @base@.
module Main (main) where

import Floquet.Linalg
import Floquet.Magnus
import Floquet.Types
import Floquet.KickedIsing
import System.Exit (exitFailure, exitSuccess)
import Data.IORef

-- | Tolerance used in numerical comparisons.
tol :: Double
tol = 1e-6

-- | Tolerance for stroboscopic / multi-step accumulation.
tolStrob :: Double
tolStrob = 1e-3

-- | A simple test runner. Holds (#passed, #failed) in an IORef.
data Counters = Counters
  { cPassed :: !Int
  , cFailed :: !Int
  } deriving Show

addPass, addFail :: IORef Counters -> IO ()
addPass r = modifyIORef' r (\c -> c { cPassed = cPassed c + 1 })
addFail r = modifyIORef' r (\c -> c { cFailed = cFailed c + 1 })

assertBool :: IORef Counters -> String -> Bool -> IO ()
assertBool ref name True  = do
  putStrLn ("  PASS: " ++ name)
  addPass ref
assertBool ref name False = do
  putStrLn ("  FAIL: " ++ name)
  addFail ref

-- ---------------------------------------------------------------------------
-- Tests
-- ---------------------------------------------------------------------------

testIdentityIsUnitary :: IORef Counters -> IO ()
testIdentityIsUnitary ref = do
  putStrLn "Test: identity is unitary"
  assertBool ref "I_4 is unitary" (isUnitary tol (idM 4))

testPauliXIsUnitary :: IORef Counters -> IO ()
testPauliXIsUnitary ref = do
  putStrLn "Test: Pauli X is unitary"
  assertBool ref "Pauli X is unitary" (isUnitary tol pauliX)

testExpHermitianIsUnitary :: IORef Counters -> IO ()
testExpHermitianIsUnitary ref = do
  putStrLn "Test: exp(-i H t) is unitary for Hermitian H"
  let h  = pauliX
      u  = expMScaled 0.7 h
  assertBool ref "exp(-i sigma^x * 0.7) is unitary" (isUnitary 1e-4 u)

testFloquetOperatorIsUnitary :: IORef Counters -> IO ()
testFloquetOperatorIsUnitary ref = do
  putStrLn "Test: Floquet operator U(T) is unitary"
  let sys = kickedTwoStep 1.0 pauliX pauliZ
      u = floquetOperator sys
  assertBool ref "U(T) for single-qubit kicked drive" (isUnitary 1e-4 u)

testFloquetIsingUnitary :: IORef Counters -> IO ()
testFloquetIsingUnitary ref = do
  putStrLn "Test: kicked Ising Floquet operator is unitary (L=3)"
  let l = 3
      sys = kickedIsing l 1.0 (pi) 0.5 [0.1, 0.2, 0.3]
      u = floquetOperator sys
  assertBool ref "U(T) for 3-site kicked Ising" (isUnitary 1e-3 u)

testEvolutionAtFullPeriod :: IORef Counters -> IO ()
testEvolutionAtFullPeriod ref = do
  putStrLn "Test: evolutionOperator(sys, T) == floquetOperator(sys)"
  let sys = kickedTwoStep 1.0 pauliX pauliZ
      u1 = evolutionOperator sys 1.0
      u2 = floquetOperator sys
  assertBool ref "consistency at t=T"
    (approxEqual 1e-4 u1 u2)

testStroboscopicPeriodicity :: IORef Counters -> IO ()
testStroboscopicPeriodicity ref = do
  putStrLn "Test: stroboscopic evolution is consistent with iterated U(T)"
  let sys = kickedTwoStep 1.0 pauliX pauliZ
      u   = floquetOperator sys
      uSquared = mulM u u
      psi0 = [Complex 1 0, Complex 0 0]
      psiVia_strob =
        stroboscopic sys 2 psi0
      psiVia_matmul =
        let v = applyMatrix uSquared psi0 in v
  assertBool ref "stroboscopic n=2 matches U(T)^2"
    (vecApproxEqual tolStrob psiVia_strob psiVia_matmul)
  where
    applyMatrix (Matrix rs) v = [ sum (zipWith (*) row v) | row <- rs ]

testKickedIsingDTCPeriod2 :: IORef Counters -> IO ()
testKickedIsingDTCPeriod2 ref = do
  putStrLn "Test: kicked Ising at perfect pi-pulse exhibits period-2T DTC"
  let l = 3
      tPeriod = 1.0
      hx = pi  -- perfect pi-pulse: hx*T/2 = pi/2
      sys = kickedIsing l tPeriod hx 0.5 [0.1, 0.2, 0.3]
      dimM = 2 ^ l :: Int
      psi0 = [Complex 1 0] ++ replicate (dimM - 1) (Complex 0 0)
      m0 = magnetisationZ0 l psi0
      m1 = magnetisationZ0 l (stroboscopic sys 1 psi0)
      m2 = magnetisationZ0 l (stroboscopic sys 2 psi0)
      m3 = magnetisationZ0 l (stroboscopic sys 3 psi0)
  putStrLn ("    m(0)=" ++ show m0
            ++ " m(1)=" ++ show m1
            ++ " m(2)=" ++ show m2
            ++ " m(3)=" ++ show m3)
  assertBool ref "m(0) ~  +1"   (abs (m0 - 1.0)  < tolStrob)
  assertBool ref "m(1) ~  -1"   (abs (m1 + 1.0)  < tolStrob)
  assertBool ref "m(2) ~  +1"   (abs (m2 - 1.0)  < tolStrob)
  assertBool ref "m(3) ~  -1"   (abs (m3 + 1.0)  < tolStrob)

testZerothOrderMagnus :: IORef Counters -> IO ()
testZerothOrderMagnus ref = do
  putStrLn "Test: 0th-order Magnus = time-averaged Hamiltonian"
  let sys = kickedTwoStep 2.0 pauliX pauliZ  -- T = 2 to test scaling
      h0  = magnusZerothOrder sys
      -- average is (T/2 * sigma^x + T/2 * sigma^z)/T = (sigma^x + sigma^z)/2
      expected = scaleM (Complex 0.5 0) (addM pauliX pauliZ)
  assertBool ref "<H> = (X + Z)/2" (approxEqual tol h0 expected)

testFirstOrderMagnusAntiHermitianCorrection :: IORef Counters -> IO ()
testFirstOrderMagnusAntiHermitianCorrection ref = do
  putStrLn "Test: 1st-order Magnus correction is Hermitian"
  let sys = kickedTwoStep 1.0 pauliX pauliZ
      h1  = magnusFirstOrder sys
      h1Adj = conjTransposeM h1
  assertBool ref "H_F^{(1)} = H_F^{(1)}^dagger" (approxEqual 1e-6 h1 h1Adj)

testValidatedSystem :: IORef Counters -> IO ()
testValidatedSystem ref = do
  putStrLn "Test: kicked Ising system is valid"
  let l = 3
      sys = kickedIsing l 1.0 (pi/2) 0.5 [0.1, 0.2, 0.3]
  assertBool ref "validate (kickedIsing L=3)" (validate sys)

-- ---------------------------------------------------------------------------
-- Helpers
-- ---------------------------------------------------------------------------

vecApproxEqual :: Double -> [Complex] -> [Complex] -> Bool
vecApproxEqual t a b =
  length a == length b
  && and (zipWith (\x y -> magnitude (x - y) <= t) a b)

-- ---------------------------------------------------------------------------
-- Main
-- ---------------------------------------------------------------------------

main :: IO ()
main = do
  ref <- newIORef (Counters 0 0)
  putStrLn "=== Law III property tests ==="
  testIdentityIsUnitary ref
  testPauliXIsUnitary ref
  testExpHermitianIsUnitary ref
  testFloquetOperatorIsUnitary ref
  testFloquetIsingUnitary ref
  testEvolutionAtFullPeriod ref
  testStroboscopicPeriodicity ref
  testKickedIsingDTCPeriod2 ref
  testZerothOrderMagnus ref
  testFirstOrderMagnusAntiHermitianCorrection ref
  testValidatedSystem ref

  Counters p f <- readIORef ref
  putStrLn ""
  putStrLn ("Summary: " ++ show p ++ " passed, " ++ show f ++ " failed.")
  if f == 0 then exitSuccess else exitFailure
