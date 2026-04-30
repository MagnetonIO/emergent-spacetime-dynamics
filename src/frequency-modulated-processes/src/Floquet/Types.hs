-- |
-- Module      : Floquet.Types
-- Description : Core types for Floquet systems (Law III).
--
-- A 'FloquetSystem' is a finite-dimensional Hilbert space together with a
-- piecewise-constant, T-periodic Hamiltonian, expressed as a list of
-- (duration, Hamiltonian) pieces summing to the period.
--
-- This is the simplest functional encoding sufficient to express the
-- examples of the companion paper: the kicked Ising chain (two pieces of
-- equal duration) and the driven Su-Schrieffer-Heeger model.
module Floquet.Types
  ( FloquetSystem(..)
  , period
  , hilbertDim
  , kickedTwoStep
  , validate
  ) where

import Floquet.Linalg

-- | A T-periodic, piecewise-constant Hamiltonian.
--
-- The list 'pieces' contains pairs @(dt, H)@ describing the Hamiltonian
-- on a sub-interval of length @dt@ within one period. The period is the
-- sum of all the @dt@s. The Hilbert-space dimension is taken from the
-- first matrix; all matrices must agree on dimension.
data FloquetSystem = FloquetSystem
  { pieces :: [(Double, Matrix)]
  -- ^ One period of the drive, as a sequence of (duration, Hamiltonian).
  , systemDim :: Int
  -- ^ Hilbert space dimension. Stored explicitly for efficiency / safety.
  } deriving (Show, Eq)

-- | Total period @T = sum dt@.
period :: FloquetSystem -> Double
period = sum . map fst . pieces

-- | Hilbert space dimension.
hilbertDim :: FloquetSystem -> Int
hilbertDim = systemDim

-- | Convenience constructor for a two-step Floquet drive
-- @H_x@ for time @T/2@, then @H_z@ for time @T/2@.
kickedTwoStep :: Double  -- ^ period T
              -> Matrix  -- ^ H_x
              -> Matrix  -- ^ H_z
              -> FloquetSystem
kickedTwoStep tPeriod hx hz =
  FloquetSystem
    { pieces    = [(tPeriod / 2, hx), (tPeriod / 2, hz)]
    , systemDim = dim hx
    }

-- | Sanity-check a 'FloquetSystem'. Returns @True@ if all pieces have
-- positive duration and matching dimensions.
validate :: FloquetSystem -> Bool
validate sys =
  let ps = pieces sys
      d  = systemDim sys
  in not (null ps)
     && all (\(dt, m) -> dt > 0 && dim m == d) ps
