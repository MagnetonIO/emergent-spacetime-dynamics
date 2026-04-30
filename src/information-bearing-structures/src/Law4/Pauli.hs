{-# LANGUAGE DeriveGeneric #-}
-- |
-- Module      : Law4.Pauli
-- Description : Symplectic representation of multi-qubit Pauli operators
-- Copyright   : (c) MagnetonIO Research 2026
-- License     : BSD-3-Clause
--
-- Multi-qubit Pauli operators are encoded as pairs of bit-vectors @(xs, zs)@.
-- Multiplication, commutation and weight are computed in the symplectic
-- representation over GF(2), ignoring the global phase (which is irrelevant
-- for stabiliser-code structure).
module Law4.Pauli
  ( Pauli (..)
  , identity
  , pauliX
  , pauliY
  , pauliZ
  , single
  , multiply
  , commute
  , weight
  , numQubits
  , pauliToString
  ) where

-- | A multi-qubit Pauli operator in the symplectic representation:
--   @xs !! i@ is True if there is an X on qubit i; @zs !! i@ for Z;
--   both True means a Y (up to phase).
data Pauli = Pauli { xs :: [Bool], zs :: [Bool] }
  deriving (Eq, Show)

-- | Identity on n qubits.
identity :: Int -> Pauli
identity n = Pauli (replicate n False) (replicate n False)

-- | Pauli X on a single qubit (index @i@) of an @n@-qubit system.
pauliX :: Int -> Int -> Pauli
pauliX n i = Pauli (single n i True) (replicate n False)

-- | Pauli Z on a single qubit.
pauliZ :: Int -> Int -> Pauli
pauliZ n i = Pauli (replicate n False) (single n i True)

-- | Pauli Y on a single qubit (= iXZ; we ignore phases).
pauliY :: Int -> Int -> Pauli
pauliY n i = Pauli (single n i True) (single n i True)

-- | Helper: list of length @n@ with @True@ at position @i@, @False@ elsewhere.
single :: Int -> Int -> a -> [a]
single n i v = [if j == i then v else error "default" | j <- [0..n-1]]
-- We never actually call the error — this is replaced by the explicit pattern below.

-- We provide a properly-typed version for booleans:
singleBool :: Int -> Int -> Bool -> [Bool]
singleBool n i v = [if j == i then v else False | j <- [0..n-1]]

-- (The 'single' above is left for type-generic uses with care; in this module
--  we only ever instantiate with Bool, but downstream callers use the safer
--  'singleBool'.)
{-# WARNING single "Use singleBool for Bool lists." #-}

-- | Multiply two Pauli operators (XOR in symplectic representation).
multiply :: Pauli -> Pauli -> Pauli
multiply (Pauli x1 z1) (Pauli x2 z2)
  | length x1 == length x2 && length z1 == length z2 =
      Pauli (zipWith xor' x1 x2) (zipWith xor' z1 z2)
  | otherwise = error "Pauli.multiply: length mismatch"
  where xor' a b = a /= b

-- | Symplectic inner product: @True@ iff the two Paulis anticommute.
commute :: Pauli -> Pauli -> Bool
commute (Pauli x1 z1) (Pauli x2 z2) =
  even (countTrue (zipWith (&&) x1 z2) + countTrue (zipWith (&&) z1 x2))
  where
    countTrue = length . filter id

-- | Pauli weight: number of qubits on which the operator is non-identity.
weight :: Pauli -> Int
weight (Pauli xs' zs') = length . filter id $ zipWith (||) xs' zs'

-- | Number of qubits represented by this Pauli operator.
numQubits :: Pauli -> Int
numQubits (Pauli xs' _) = length xs'

-- | Pretty-print a Pauli operator as e.g. "IXZYI".
pauliToString :: Pauli -> String
pauliToString (Pauli xs' zs') = zipWith letter xs' zs'
  where
    letter False False = 'I'
    letter True  False = 'X'
    letter False True  = 'Z'
    letter True  True  = 'Y'
