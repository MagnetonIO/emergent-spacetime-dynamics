-- |
-- Module      : Law4.Properties
-- Description : Property checks for Law IV companion code
-- Copyright   : (c) MagnetonIO Research 2026
-- License     : BSD-3-Clause
--
-- Lightweight property tests of the form @prop_X :: Bool@. They are
-- consumed by the test suite and the executable demo. We avoid external
-- dependencies (no QuickCheck) to keep the build trivial; we sample
-- exhaustively over the small instances of interest.
module Law4.Properties
  ( -- * Stabiliser-code properties
    prop_fiveQubit_valid
  , prop_fiveQubit_distance_3
  , prop_steane_valid
  , prop_shor_valid
  , prop_bitFlip_valid
  , prop_phaseFlip_valid
    -- * HaPPY-tile properties
  , prop_singleTile_RT_singleQubit
  , prop_singleTile_RT_complement
  , prop_twoTile_RT
    -- * Fisher metric properties
  , prop_gaussian_metric_positiveDefinite
  , prop_gaussian_curvature_negative
  , prop_gaussian_metric_diagonal
  , prop_centralDifference_sin
    -- * Aggregator
  , allProperties
  ) where

import           Law4.Fisher
import           Law4.HaPPY
import           Law4.Stabiliser

------------------------------------------------------------
-- Stabiliser-code properties
------------------------------------------------------------

prop_fiveQubit_valid :: Bool
prop_fiveQubit_valid = isValidStabilizer fiveQubitCode

prop_fiveQubit_distance_3 :: Bool
prop_fiveQubit_distance_3 = codeDistance fiveQubitCode == 3

prop_steane_valid :: Bool
prop_steane_valid = isValidStabilizer steaneCode

prop_shor_valid :: Bool
prop_shor_valid = isValidStabilizer shorCode

prop_bitFlip_valid :: Bool
prop_bitFlip_valid = isValidStabilizer bitFlipCode

prop_phaseFlip_valid :: Bool
prop_phaseFlip_valid = isValidStabilizer phaseFlipCode

------------------------------------------------------------
-- HaPPY-tile properties
------------------------------------------------------------

-- | On a single tile, a single-qubit boundary region requires zero internal
-- edges to be "cut" (there are no internal edges). The discrete RT formula
-- thus gives 0 for the area in our toy example; this is a sanity check
-- that the cut-counting routine handles the trivial-graph case.
prop_singleTile_RT_singleQubit :: Bool
prop_singleTile_RT_singleQubit =
  boundaryCut singleTile [(0,1)] == 0

-- | The complement of a single boundary leg has 4 boundary legs; on a
-- single tile this still requires no internal cuts. (The non-trivial RT
-- structure appears once we have multiple tiles; see twoTilePair.)
prop_singleTile_RT_complement :: Bool
prop_singleTile_RT_complement =
  boundaryCut singleTile [(0,2),(0,3),(0,4),(0,5)] == 0

-- | On the two-tile pair, separating the four boundary legs of tile 0 from
-- the four boundary legs of tile 1 requires cutting exactly one internal
-- edge -- the single shared edge connecting the two tiles.
prop_twoTile_RT :: Bool
prop_twoTile_RT =
  boundaryCut twoTilePair [(0,1),(0,2),(0,3),(0,4)] == 1

------------------------------------------------------------
-- Fisher metric properties
------------------------------------------------------------

-- | The Gaussian Fisher metric is positive definite for any @sigma > 0@.
prop_gaussian_metric_positiveDefinite :: Bool
prop_gaussian_metric_positiveDefinite =
  all check [GaussianParams 0 s | s <- [0.1, 0.5, 1.0, 2.0, 10.0]]
  where
    check p =
      let g = gaussianFisher p
          a = g !! 0 !! 0
          d = g !! 1 !! 1
          b = g !! 0 !! 1
      in a > 0 && d > 0 && a*d - b*b > 0

-- | The Gaussian information manifold has constant negative curvature.
prop_gaussian_curvature_negative :: Bool
prop_gaussian_curvature_negative =
  all (\p -> gaussianRicciScalar p < 0)
      [GaussianParams 0 s | s <- [0.1, 0.5, 1.0, 2.0, 10.0]]

-- | The Gaussian Fisher metric is diagonal in @(mu, sigma)@ coordinates.
prop_gaussian_metric_diagonal :: Bool
prop_gaussian_metric_diagonal =
  all check [GaussianParams m s | m <- [0,1], s <- [0.5,1.0,2.0]]
  where
    check p =
      let g = gaussianFisher p
      in (g !! 0 !! 1 == 0) && (g !! 1 !! 0 == 0)

-- | Sanity check on the central-difference routine: at @x=0@,
-- @d/dx sin x = cos 0 = 1@.
prop_centralDifference_sin :: Bool
prop_centralDifference_sin =
  abs (centralDifference sin 0 1e-4 - 1.0) < 1e-6

------------------------------------------------------------
-- Aggregator
------------------------------------------------------------

allProperties :: [(String, Bool)]
allProperties =
  [ ("five-qubit code is a valid stabiliser",          prop_fiveQubit_valid)
  , ("five-qubit code has distance 3",                  prop_fiveQubit_distance_3)
  , ("Steane code is a valid stabiliser",               prop_steane_valid)
  , ("Shor code is a valid stabiliser",                 prop_shor_valid)
  , ("bit-flip code is a valid stabiliser",             prop_bitFlip_valid)
  , ("phase-flip code is a valid stabiliser",           prop_phaseFlip_valid)
  , ("HaPPY single tile, 1-qubit RT",                   prop_singleTile_RT_singleQubit)
  , ("HaPPY single tile, complement RT",                prop_singleTile_RT_complement)
  , ("HaPPY two-tile pair, central-edge RT cut",        prop_twoTile_RT)
  , ("Gaussian Fisher metric is positive-definite",     prop_gaussian_metric_positiveDefinite)
  , ("Gaussian Fisher metric has negative curvature",   prop_gaussian_curvature_negative)
  , ("Gaussian Fisher metric is diagonal",              prop_gaussian_metric_diagonal)
  , ("central-difference of sin at 0 equals 1",         prop_centralDifference_sin)
  ]
