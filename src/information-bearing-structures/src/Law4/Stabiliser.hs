-- |
-- Module      : Law4.Stabiliser
-- Description : A small stabiliser-code framework
-- Copyright   : (c) MagnetonIO Research 2026
-- License     : BSD-3-Clause
--
-- A stabiliser code is specified by a set of mutually commuting Pauli
-- generators. We expose constructions for the bit-flip, phase-flip,
-- Shor, Steane and 5-qubit codes, together with utilities to compute
-- code distance and verify the stabiliser-code axioms.
module Law4.Stabiliser
  ( StabilizerCode (..)
  , bitFlipCode
  , phaseFlipCode
  , shorCode
  , steaneCode
  , fiveQubitCode
  , isValidStabilizer
  , codeDistance
  , numEncoded
  , describe
  ) where

import           Law4.Pauli

-- | A stabiliser code is described by its physical-qubit count, the
-- generators of the stabiliser group, and (cached) code parameters.
data StabilizerCode = StabilizerCode
  { numPhysical :: Int          -- ^ Number of physical qubits @n@.
  , generators  :: [Pauli]      -- ^ Stabiliser generators.
  , codeName    :: String       -- ^ Human-readable name.
  } deriving (Eq, Show)

-- | The 3-qubit bit-flip code [[3,1,1]]: not a true error-correcting code
-- (distance 1) but useful pedagogically.
bitFlipCode :: StabilizerCode
bitFlipCode = StabilizerCode
  { numPhysical = 3
  , generators  = [ Pauli [False,False,False] [True,True,False]   -- ZZI
                  , Pauli [False,False,False] [False,True,True]   -- IZZ
                  ]
  , codeName    = "[[3,1,1]] bit-flip"
  }

-- | The 3-qubit phase-flip code [[3,1,1]] dual to the bit-flip code.
phaseFlipCode :: StabilizerCode
phaseFlipCode = StabilizerCode
  { numPhysical = 3
  , generators  = [ Pauli [True,True,False] [False,False,False]   -- XXI
                  , Pauli [False,True,True] [False,False,False]   -- IXX
                  ]
  , codeName    = "[[3,1,1]] phase-flip"
  }

-- | The Shor [[9,1,3]] code. Concatenation of the phase-flip code with
-- the bit-flip code.
shorCode :: StabilizerCode
shorCode = StabilizerCode
  { numPhysical = 9
  , generators  =
      -- Z-type generators within each block of three (bit-flip protection):
      [ pZZI 0 1, pZZI 1 2
      , pZZI 3 4, pZZI 4 5
      , pZZI 6 7, pZZI 7 8
      -- X-type generators across blocks (phase-flip protection):
      , Pauli (mkBoolList 9 [0..5] True)  (replicate 9 False)        -- XXXXXXIII
      , Pauli (mkBoolList 9 [3..8] True)  (replicate 9 False)        -- IIIXXXXXX
      ]
  , codeName    = "[[9,1,3]] Shor"
  }
  where
    pZZI i j = Pauli (replicate 9 False) (mkBoolList 9 [i,j] True)

-- | The Steane [[7,1,3]] code based on the [7,4] Hamming code.
steaneCode :: StabilizerCode
steaneCode = StabilizerCode
  { numPhysical = 7
  , generators  =
      -- X-type stabilisers from the Hamming parity-check matrix:
      [ xRow [0,2,4,6]   -- IXIXIXI -> at positions 0,2,4,6 we have X
      , xRow [1,2,5,6]
      , xRow [3,4,5,6]
      -- Z-type stabilisers (same parity-check matrix transposed to Z):
      , zRow [0,2,4,6]
      , zRow [1,2,5,6]
      , zRow [3,4,5,6]
      ]
  , codeName    = "[[7,1,3]] Steane"
  }
  where
    xRow ix = Pauli (mkBoolList 7 ix True) (replicate 7 False)
    zRow ix = Pauli (replicate 7 False)    (mkBoolList 7 ix True)

-- | The Laflamme--Miquel--Paz--Zurek [[5,1,3]] code: the smallest single-error
-- correcting quantum code, and a perfect tensor (one bulk + five boundary).
--
-- Standard cyclic generators:
--   g1 = X Z Z X I
--   g2 = I X Z Z X
--   g3 = X I X Z Z
--   g4 = Z X I X Z
fiveQubitCode :: StabilizerCode
fiveQubitCode = StabilizerCode
  { numPhysical = 5
  , generators  =
      [ pauliFromString "XZZXI"
      , pauliFromString "IXZZX"
      , pauliFromString "XIXZZ"
      , pauliFromString "ZXIXZ"
      ]
  , codeName    = "[[5,1,3]] perfect"
  }

-- | Build a Pauli from a string in @{I,X,Y,Z}^n@.
pauliFromString :: String -> Pauli
pauliFromString s =
  Pauli [ c == 'X' || c == 'Y' | c <- s ]
        [ c == 'Z' || c == 'Y' | c <- s ]

-- | Build a length-@n@ Bool list with @True@ at the given indices.
mkBoolList :: Int -> [Int] -> Bool -> [Bool]
mkBoolList n ix v = [if i `elem` ix then v else not v | i <- [0..n-1]]

-- | Verify the stabiliser axioms: all generators mutually commute, and none
-- equals the identity.
isValidStabilizer :: StabilizerCode -> Bool
isValidStabilizer c =
     all (\g -> weight g > 0) gs
  && and [ commute g1 g2 | g1 <- gs, g2 <- gs ]
  where gs = generators c

-- | Number of encoded logical qubits @k = n - r@, where @r@ is the number of
-- independent generators.
numEncoded :: StabilizerCode -> Int
numEncoded c = numPhysical c - length (generators c)

-- | Compute the code distance by exhaustive search over Pauli operators of
-- increasing weight, looking for a non-trivial element of the normaliser
-- that is not in the stabiliser. This is exponential in @n@ but tractable
-- for the small codes we test.
codeDistance :: StabilizerCode -> Int
codeDistance c = head [ w | w <- [1..numPhysical c]
                          , any (isLogical c) (allPaulis (numPhysical c) w) ]

-- | Is the given Pauli a non-trivial logical operator: it commutes with all
-- stabilisers but is not itself a product of stabilisers?
isLogical :: StabilizerCode -> Pauli -> Bool
isLogical c p =
     all (commute p) (generators c)
  && not (isInStabilizer c p)

-- | Is the Pauli in the stabiliser group? Brute-force: enumerate the
-- subgroup and search.
isInStabilizer :: StabilizerCode -> Pauli -> Bool
isInStabilizer c p = p `elem` stabilizerGroup c

-- | Enumerate the stabiliser subgroup (all 2^r products of generators).
stabilizerGroup :: StabilizerCode -> [Pauli]
stabilizerGroup c = go (generators c) [identity (numPhysical c)]
  where
    go []     acc = acc
    go (g:gs) acc = go gs (acc ++ map (multiply g) acc)

-- | Enumerate all Pauli operators of a given weight.
allPaulis :: Int -> Int -> [Pauli]
allPaulis n w =
  [ Pauli xv zv
  | xv <- bitVectors n
  , zv <- bitVectors n
  , length (filter id (zipWith (||) xv zv)) == w
  ]

bitVectors :: Int -> [[Bool]]
bitVectors 0 = [[]]
bitVectors n = [ b:bs | b <- [False, True], bs <- bitVectors (n-1) ]

-- | Pretty-print a code's parameters and generators.
describe :: StabilizerCode -> String
describe c = unlines $
  [ "Code: " ++ codeName c
  , "  n = " ++ show (numPhysical c)
  , "  k = " ++ show (numEncoded c)
  , "  generators:"
  ] ++ map (\g -> "    " ++ pauliToString g) (generators c)
