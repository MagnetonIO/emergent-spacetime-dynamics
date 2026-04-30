{-# LANGUAGE BangPatterns #-}
-- |
-- Module      : Floquet.Linalg
-- Description : Minimal complex-matrix linear algebra for Floquet computations.
--
-- We deliberately avoid pulling in @hmatrix@ to keep the cabal package
-- self-contained and portable. The implementation is straightforward
-- (and slow) but adequate for the small examples in the companion paper
-- (e.g. up to a few qubits).
module Floquet.Linalg
  ( -- * Complex numbers
    Complex(..)
  , cFromReal
  , conj
  , magnitude
    -- * Matrices
  , Matrix(..)
  , dim
  , idM
  , zeroM
  , transposeM
  , conjTransposeM
  , addM
  , subM
  , scaleM
  , mulM
  , commutator
  , isUnitary
  , approxEqual
  ) where

-- | A simple boxed complex number. Re/Im are 'Double's.
data Complex = Complex { cre :: !Double, cim :: !Double }
  deriving (Eq, Show)

-- | Real number lifted to Complex.
cFromReal :: Double -> Complex
cFromReal x = Complex x 0

-- | Complex conjugate.
conj :: Complex -> Complex
conj (Complex a b) = Complex a (-b)

-- | Magnitude (modulus) of a complex number.
magnitude :: Complex -> Double
magnitude (Complex a b) = sqrt (a*a + b*b)

instance Num Complex where
  (Complex a b) + (Complex c d) = Complex (a+c) (b+d)
  (Complex a b) - (Complex c d) = Complex (a-c) (b-d)
  (Complex a b) * (Complex c d) = Complex (a*c - b*d) (a*d + b*c)
  negate (Complex a b)          = Complex (-a) (-b)
  abs z                         = Complex (magnitude z) 0
  signum z                      = let m = magnitude z
                                   in if m == 0 then 0 else Complex (cre z / m) (cim z / m)
  fromInteger n                 = Complex (fromInteger n) 0

-- | A square matrix represented as a list of rows.
--
-- Invariant: every row has the same length, equal to the matrix dimension.
newtype Matrix = Matrix { rows :: [[Complex]] }
  deriving (Eq, Show)

-- | Linear dimension of a square matrix.
dim :: Matrix -> Int
dim (Matrix []) = 0
dim (Matrix (r:_)) = length r

-- | Identity matrix of given size.
idM :: Int -> Matrix
idM n = Matrix [ [ if i == j then 1 else 0 | j <- [0 .. n-1] ] | i <- [0 .. n-1] ]

-- | Zero matrix of given size.
zeroM :: Int -> Matrix
zeroM n = Matrix (replicate n (replicate n 0))

-- | Plain transpose (no conjugation).
transposeM :: Matrix -> Matrix
transposeM (Matrix rs) = Matrix (transposeList rs)
  where
    transposeList [] = []
    transposeList ([] : _) = []
    transposeList xs = map head xs : transposeList (map tail xs)

-- | Conjugate transpose (Hermitian adjoint).
conjTransposeM :: Matrix -> Matrix
conjTransposeM m = let Matrix rs = transposeM m
                   in Matrix (map (map conj) rs)

-- | Elementwise addition.
addM :: Matrix -> Matrix -> Matrix
addM (Matrix a) (Matrix b) = Matrix (zipWith (zipWith (+)) a b)

-- | Elementwise subtraction.
subM :: Matrix -> Matrix -> Matrix
subM (Matrix a) (Matrix b) = Matrix (zipWith (zipWith (-)) a b)

-- | Scalar multiplication.
scaleM :: Complex -> Matrix -> Matrix
scaleM s (Matrix rs) = Matrix (map (map (s *)) rs)

-- | Matrix product.
mulM :: Matrix -> Matrix -> Matrix
mulM a b =
  let Matrix bs = transposeM b
      ra = rows a
  in Matrix [ [ dot row col | col <- bs ] | row <- ra ]
  where
    dot xs ys = sum (zipWith (*) xs ys)

-- | Commutator @[A,B] = AB - BA@.
commutator :: Matrix -> Matrix -> Matrix
commutator a b = subM (mulM a b) (mulM b a)

-- | Check that a matrix is unitary up to a tolerance: @U^\dagger U \approx I@.
isUnitary :: Double -> Matrix -> Bool
isUnitary tol u =
  let n = dim u
      lhs = mulM (conjTransposeM u) u
  in approxEqual tol lhs (idM n)

-- | Compare two matrices entry-wise within a tolerance.
approxEqual :: Double -> Matrix -> Matrix -> Bool
approxEqual tol (Matrix a) (Matrix b) =
  length a == length b
  && and (zipWith rowEq a b)
  where
    rowEq r1 r2 =
      length r1 == length r2
      && and (zipWith entryEq r1 r2)
    entryEq x y = magnitude (x - y) <= tol
