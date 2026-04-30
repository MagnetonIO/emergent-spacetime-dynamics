{-# LANGUAGE ScopedTypeVariables #-}
{- |
Module      : PhaseBoundMatter.GroupCohomology
Description : Group cohomology H^n(G, U(1)) for small finite groups.

Implements 2- and 3-cocycles on finite groups, the cocycle and
coboundary conditions, and a brute-force computation of cohomology
groups H^n(G, U(1)) modeled with phases as elements of [-1, +1]
or with finite cyclic targets. This is sufficient for the SPT
classification examples worked in the paper:
  - H^2(Z_2, U_T(1)) = Z_2 (Haldane phase)
  - H^3(Z_2, U(1))   = Z_2 (2D bosonic SPT)
  - H^3(Z_2 x Z_2, U(1)) = Z_2^3 (eight 2D Z_2 x Z_2 SPTs)
-}
module PhaseBoundMatter.GroupCohomology
  ( -- * Cochains
    Cochain2
  , Cochain3
    -- * Cocycle conditions
  , isCocycle2
  , isCocycle3
    -- * Coboundary maps
  , coboundary1
  , coboundary2
    -- * Trivial cocycle
  , trivialCocycle2
  , trivialCocycle3
    -- * Sample non-trivial cocycles
  , haldaneCocycle
    -- * Functorial classification
  , cohomologyClass
  , Z2Sign(..)
  , multZ2
  , invZ2
  ) where

import           PhaseBoundMatter.Symmetry

-- | Cocycle target: signs +/- 1 (sufficient for Z_2-valued cohomology).
data Z2Sign = Plus | Minus deriving (Eq, Ord, Show)

multZ2 :: Z2Sign -> Z2Sign -> Z2Sign
multZ2 Plus  s     = s
multZ2 s     Plus  = s
multZ2 Minus Minus = Plus

invZ2 :: Z2Sign -> Z2Sign
invZ2 = id  -- self-inverse in Z_2

-- | A 2-cochain on G is a function G x G -> U(1) (here Z_2-valued).
type Cochain2 g = g -> g -> Z2Sign

-- | A 3-cochain on G is a function G x G x G -> U(1).
type Cochain3 g = g -> g -> g -> Z2Sign

-- | The 2-cocycle condition (multiplicatively):
--   omega(b,c) * omega(ab, c)^{-1} * omega(a, bc) * omega(a,b)^{-1} = 1.
isCocycle2 :: FiniteGroup g => Cochain2 g -> Bool
isCocycle2 omega = all check allTriples
  where
    check (a,b,c) =
      let lhs = (omega b c) `multZ2`
                invZ2 (omega (gMul a b) c) `multZ2`
                (omega a (gMul b c)) `multZ2`
                invZ2 (omega a b)
      in lhs == Plus

-- | The 3-cocycle condition:
--   d omega(g_1,g_2,g_3,g_4) = omega(g_2,g_3,g_4)
--                              * omega(g_1 g_2, g_3, g_4)^{-1}
--                              * omega(g_1, g_2 g_3, g_4)
--                              * omega(g_1, g_2, g_3 g_4)^{-1}
--                              * omega(g_1, g_2, g_3)
--                            = 1.
isCocycle3 :: FiniteGroup g => Cochain3 g -> Bool
isCocycle3 omega = all check fourTuples
  where
    fourTuples = [(a,b,c,d) | a <- gElements, b <- gElements,
                              c <- gElements, d <- gElements]
    check (a,b,c,d) =
      let lhs = (omega b c d)
            `multZ2` invZ2 (omega (gMul a b) c d)
            `multZ2` (omega a (gMul b c) d)
            `multZ2` invZ2 (omega a b (gMul c d))
            `multZ2` (omega a b c)
      in lhs == Plus

-- | Coboundary of a 1-cochain: (df)(a,b) = f(b) * f(ab)^{-1} * f(a).
coboundary1 :: FiniteGroup g => (g -> Z2Sign) -> Cochain2 g
coboundary1 f a b = f b `multZ2` invZ2 (f (gMul a b)) `multZ2` f a

-- | Coboundary of a 2-cochain.
coboundary2 :: FiniteGroup g => Cochain2 g -> Cochain3 g
coboundary2 omega a b c =
  omega b c
    `multZ2` invZ2 (omega (gMul a b) c)
    `multZ2` omega a (gMul b c)
    `multZ2` invZ2 (omega a b)

-- | The trivial (everywhere-Plus) 2-cocycle.
trivialCocycle2 :: FiniteGroup g => Cochain2 g
trivialCocycle2 _ _ = Plus

-- | The trivial 3-cocycle.
trivialCocycle3 :: FiniteGroup g => Cochain3 g
trivialCocycle3 _ _ _ = Plus

-- | The non-trivial 2-cocycle on Z_2 (Haldane class):
--   omega(g, g) = -1, all other values = +1.
-- This represents the Z_2 generator of H^2(Z_2, U_T(1)).
haldaneCocycle :: Cochain2 Z2
haldaneCocycle Z2X Z2X = Minus
haldaneCocycle _   _   = Plus

-- | The cohomology class label of a 2-cocycle: returns Plus if it
-- is a coboundary (trivial class), Minus otherwise.
-- For Z_2-valued cohomology of Z_2, this completely determines
-- the class.
cohomologyClass :: forall g. FiniteGroup g => Cochain2 g -> Z2Sign
cohomologyClass omega
  | any equalsCoboundary trivial1Cochains = Plus
  | otherwise                              = Minus
  where
    -- All 1-cochains f: G -> {Plus, Minus}.
    trivial1Cochains :: [g -> Z2Sign]
    trivial1Cochains = [mkF assignment | assignment <- allAssignments]
    elems :: [g]
    elems = gElements
    n     = length elems
    allAssignments :: [[Z2Sign]]
    allAssignments = sequence (replicate n [Plus, Minus])
    mkF :: [Z2Sign] -> g -> Z2Sign
    mkF asgn g =
      case lookup g (zip elems asgn) of
        Just s  -> s
        Nothing -> Plus
    equalsCoboundary :: (g -> Z2Sign) -> Bool
    equalsCoboundary f =
      all (\(a,b) -> coboundary1 f a b == omega a b)
          (allPairs :: [(g,g)])
