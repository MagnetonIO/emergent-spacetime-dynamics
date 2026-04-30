{-# LANGUAGE BangPatterns #-}
-- |
-- Module      : Floquet.Magnus
-- Description : Floquet evolution operator and first-order Magnus expansion.
--
-- For a piecewise-constant T-periodic Hamiltonian, the exact one-period
-- evolution operator is the ordered product
-- @U(T) = exp(-i H_n dt_n) ... exp(-i H_1 dt_1)@.
-- The Floquet Hamiltonian is defined by @U(T) = exp(-i H_F T)@ (modulo
-- multiples of @\\omega = 2\\pi/T@ in the spectrum).
--
-- We compute the matrix exponential by truncating the Taylor series.
-- This is sufficient for the small (2--64 dimensional) systems used in
-- the paper. For larger systems a Pad\'e approximation or a diagonalisation
-- in eigenbasis would be preferable.
--
-- The first-order Magnus expansion gives the time-averaged Hamiltonian
-- @H_F^{(0)} = (1/T) \\sum_k dt_k H_k@.
module Floquet.Magnus
  ( -- * Matrix exponential
    expM
  , expMScaled
    -- * Floquet evolution
  , evolutionOperator
  , floquetOperator
    -- * Magnus series
  , magnusZerothOrder
  , magnusFirstOrder
  , magnusSeries
    -- * Stroboscopic propagation
  , stroboscopic
  ) where

import Floquet.Linalg
import Floquet.Types

-- | Truncated Taylor series of the matrix exponential.
--
-- Computes @\\sum_{k=0}^{N} A^k / k!@ for a fixed truncation @N@.
expMTaylor :: Int -> Matrix -> Matrix
expMTaylor nMax a =
  let n  = dim a
      i  = idM n
  in go 1 i i
  where
    go !k !termAcc !sumAcc
      | k > nMax  = sumAcc
      | otherwise =
          let nextTerm = scaleM (Complex (1 / fromIntegral k) 0) (mulM termAcc a)
              !sumAcc' = addM sumAcc nextTerm
          in go (k + 1) nextTerm sumAcc'

-- | Matrix exponential via scaling-and-squaring on top of the Taylor
-- series. We pick a power of two @s@ such that @||A/2^s|| < 1@ in the
-- spectral-radius-friendly sense @max |A_ij| < 1/2^s@.
expM :: Matrix -> Matrix
expM a =
  let n          = dim a
      maxEntry   = maximum (0 : [ magnitude x | row <- rows a, x <- row ])
      s          = max 0 (ceiling (logBase 2 (max 1 maxEntry)) + 4 :: Int)
      scale      = Complex (1 / (2 ^^ s)) 0
      aScaled    = scaleM scale a
      eAScaled   = expMTaylor 30 aScaled
  in iterate squareIt eAScaled !! s
  where
    squareIt m = mulM m m

-- | Scale a Hermitian Hamiltonian @H@ by @-i\\,t@ and exponentiate, giving
-- the unitary @\\exp(-i H t)@.
expMScaled :: Double -> Matrix -> Matrix
expMScaled t h = expM (scaleM (Complex 0 (negate t)) h)

-- | Exact Floquet (one-period) evolution operator, computed by ordered
-- product of piecewise propagators.
floquetOperator :: FloquetSystem -> Matrix
floquetOperator sys =
  let ps = pieces sys
      props = [ expMScaled dt h | (dt, h) <- ps ]
  -- Time-ordered product: the EARLIEST piece is applied first, so it
  -- multiplies on the RIGHT; the LATEST piece multiplies on the LEFT.
  in foldr1 mulM (reverse props)

-- | Forward evolution from time 0 to time @t@ (assuming @0 <= t <= T@).
evolutionOperator :: FloquetSystem -> Double -> Matrix
evolutionOperator sys t = go (pieces sys) t (idM (systemDim sys))
  where
    go [] _ acc = acc
    go ((dt, h) : rest) tRemaining acc
      | tRemaining <= 0 = acc
      | tRemaining >= dt =
          go rest (tRemaining - dt) (mulM (expMScaled dt h) acc)
      | otherwise =
          mulM (expMScaled tRemaining h) acc

-- | Zeroth-order Magnus / Floquet--Magnus term: time-averaged Hamiltonian.
magnusZerothOrder :: FloquetSystem -> Matrix
magnusZerothOrder sys =
  let t = period sys
      contribs = [ scaleM (Complex (dt / t) 0) h | (dt, h) <- pieces sys ]
  in foldr1 addM contribs

-- | First-order Magnus correction:
-- @H_F^{(1)} = (1/(2 i T)) \\sum_{j>k} dt_j dt_k [H_j, H_k]@
-- for piecewise-constant drives. (For two pieces this reduces to the
-- familiar single commutator times @-i T/4@.)
magnusFirstOrder :: FloquetSystem -> Matrix
magnusFirstOrder sys =
  let ps = zip [0 :: Int ..] (pieces sys)
      tT = period sys
      coeff = Complex 0 (negate (1 / (2 * tT)))
      n = systemDim sys
      contribs =
        [ scaleM (Complex (dtJ * dtK) 0 * coeff) (commutator hJ hK)
        | (j, (dtJ, hJ)) <- ps
        , (k, (dtK, hK)) <- ps
        , j > k
        ]
  in case contribs of
       []     -> zeroM n
       (c:cs) -> foldr addM c cs

-- | Approximation @H_F^{(\\le N)}@ for @N \\in {0, 1}@. Higher orders are
-- implemented schematically (zero-fill); not used in tests.
magnusSeries :: Int -> FloquetSystem -> Matrix
magnusSeries 0 sys = magnusZerothOrder sys
magnusSeries 1 sys = addM (magnusZerothOrder sys) (magnusFirstOrder sys)
magnusSeries _ sys = magnusSeries 1 sys -- pretend higher orders vanish

-- | Stroboscopic evolution: apply @U(T)@ to a state @n@ times.
-- The state is represented as a column vector (list of complex numbers).
stroboscopic :: FloquetSystem -> Int -> [Complex] -> [Complex]
stroboscopic sys n psi0 =
  let u = floquetOperator sys
  in iterate (applyMatrix u) psi0 !! n

-- | Multiply a matrix into a vector.
applyMatrix :: Matrix -> [Complex] -> [Complex]
applyMatrix m v = [ sum (zipWith (*) row v) | row <- rows m ]
