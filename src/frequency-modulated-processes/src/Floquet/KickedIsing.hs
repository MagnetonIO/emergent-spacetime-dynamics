-- |
-- Module      : Floquet.KickedIsing
-- Description : The kicked Ising chain: paradigmatic Floquet DTC.
--
-- We construct the Hamiltonian operators for the periodically kicked Ising
-- chain on @L@ sites:
--
-- @H_x = h_x \\sum_i \\sigma^x_i@   for time T/2
-- @H_z = J \\sum_i \\sigma^z_i \\sigma^z_{i+1} + \\sum_i h_z^{(i)} \\sigma^z_i@   for time T/2
--
-- and produce its 'FloquetSystem'. We provide a function for the
-- stroboscopic magnetisation \\(\\langle\\psi(nT)|\\sigma^z_0|\\psi(nT)\\rangle\\)
-- starting from the all-up product state.
module Floquet.KickedIsing
  ( -- * Pauli operators on a single qubit
    pauliX
  , pauliY
  , pauliZ
  , identity2
    -- * Many-body Pauli operators
  , singleSitePauli
  , twoSiteZZ
    -- * Kicked Ising builders
  , hxFor
  , hzFor
  , kickedIsing
    -- * Observables
  , magnetisationZ0
  ) where

import Floquet.Linalg
import Floquet.Types

-- ---------------------------------------------------------------------------
-- Pauli matrices
-- ---------------------------------------------------------------------------

-- | Identity on one qubit.
identity2 :: Matrix
identity2 = Matrix
  [ [Complex 1 0, Complex 0 0]
  , [Complex 0 0, Complex 1 0]
  ]

-- | Pauli X.
pauliX :: Matrix
pauliX = Matrix
  [ [Complex 0 0, Complex 1 0]
  , [Complex 1 0, Complex 0 0]
  ]

-- | Pauli Y.
pauliY :: Matrix
pauliY = Matrix
  [ [Complex 0 0, Complex 0 (-1)]
  , [Complex 0 1, Complex 0 0]
  ]

-- | Pauli Z.
pauliZ :: Matrix
pauliZ = Matrix
  [ [Complex 1 0, Complex 0 0]
  , [Complex 0 0, Complex (-1) 0]
  ]

-- ---------------------------------------------------------------------------
-- Tensor products
-- ---------------------------------------------------------------------------

-- | Kronecker (tensor) product of two matrices.
--
-- Convention: @(A \\otimes B)_{(i,p),(j,q)} = A_{ij} B_{pq}@
-- with rows indexed lex by @(i,p)@ and columns lex by @(j,q)@.
-- For two 2x2 matrices the result is a 4x4 block matrix
-- with @A_{ij}@ scaling each 2x2 block of @B@.
kron :: Matrix -> Matrix -> Matrix
kron (Matrix as) (Matrix bs) =
  Matrix
    [ concat [ [ aij * bpq | bpq <- brow ] | aij <- arow ]
    | arow <- as
    , brow <- bs
    ]

-- | Build the @L@-qubit operator @I \\otimes \\dots \\otimes A \\otimes \\dots
-- \\otimes I@ with @A@ at site @site@ (0-indexed).
singleSitePauli :: Int -> Int -> Matrix -> Matrix
singleSitePauli l site op =
  foldr1 kron
    [ if i == site then op else identity2 | i <- [0 .. l - 1] ]

-- | Build @\\sigma^z_i \\sigma^z_{i+1}@ as an @L@-qubit operator.
twoSiteZZ :: Int -> Int -> Matrix
twoSiteZZ l i =
  foldr1 kron
    [ if k == i || k == i + 1 then pauliZ else identity2
    | k <- [0 .. l - 1]
    ]

-- ---------------------------------------------------------------------------
-- Kicked Ising
-- ---------------------------------------------------------------------------

-- | Transverse field Hamiltonian \\(H_x = h_x \\sum_i \\sigma^x_i\\).
hxFor :: Int     -- ^ chain length L
      -> Double  -- ^ field strength h_x
      -> Matrix
hxFor l hx =
  let dimM = 2 ^ l
      contributions =
        [ scaleM (Complex hx 0) (singleSitePauli l i pauliX)
        | i <- [0 .. l - 1]
        ]
  in case contributions of
       []     -> zeroM dimM
       (c:cs) -> foldr addM c cs

-- | Disordered Ising Hamiltonian \\(H_z = J \\sum_i \\sigma^z_i \\sigma^z_{i+1}
-- + \\sum_i h_z^{(i)} \\sigma^z_i\\).
hzFor :: Int        -- ^ chain length L
      -> Double     -- ^ Ising coupling J
      -> [Double]   -- ^ longitudinal fields h_z (length L)
      -> Matrix
hzFor l j hzList =
  let dimM   = 2 ^ l
      bonds  = [ scaleM (Complex j 0) (twoSiteZZ l i)
               | i <- [0 .. l - 2]
               ]
      fields = [ scaleM (Complex (hzList !! i) 0)
                       (singleSitePauli l i pauliZ)
               | i <- [0 .. l - 1]
               ]
      all_ = bonds ++ fields
  in case all_ of
       []     -> zeroM dimM
       (c:cs) -> foldr addM c cs

-- | Build the kicked-Ising 'FloquetSystem'. With @hxT/2 = pi/2@ the system
-- realises an exact period-2T DTC; small detunings still preserve the DTC
-- via MBL stability (not modelled here beyond the exact case).
kickedIsing :: Int        -- ^ chain length L
            -> Double     -- ^ period T
            -> Double     -- ^ transverse-field strength h_x
            -> Double     -- ^ Ising coupling J
            -> [Double]   -- ^ longitudinal fields h_z (length L)
            -> FloquetSystem
kickedIsing l tPeriod hx j hzs =
  kickedTwoStep tPeriod (hxFor l hx) (hzFor l j hzs)

-- ---------------------------------------------------------------------------
-- Observables
-- ---------------------------------------------------------------------------

-- | Magnetisation @<\\sigma^z_0>@ in a state @psi@ (column vector).
magnetisationZ0 :: Int -> [Complex] -> Double
magnetisationZ0 l psi =
  let op = singleSitePauli l 0 pauliZ
      opPsi = applyMatrix op psi
      inner = sum [ conj a * b | (a, b) <- zip psi opPsi ]
  in cre inner
  where
    applyMatrix (Matrix rs) v = [ sum (zipWith (*) row v) | row <- rs ]
