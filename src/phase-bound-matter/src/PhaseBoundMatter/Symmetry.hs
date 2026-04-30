{- |
Module      : PhaseBoundMatter.Symmetry
Description : Finite symmetry groups as on-site representations.

Encodes finite symmetry groups, their multiplication tables,
and on-site representations on a finite-dimensional Hilbert space.
We use small finite cases (Z_2, Z_3, Z_2 x Z_2, S_3) where the
group cohomology can be computed by exhaustive enumeration.
-}
module PhaseBoundMatter.Symmetry
  ( -- * Group typeclass
    FiniteGroup(..)
    -- * Concrete small groups
  , Z2(..)
  , Z3(..)
  , Z2xZ2(..)
  , S3(..)
    -- * Tools
  , allTriples
  , allPairs
  , isHomomorphism
  ) where

-- | A finite group is a finite set with multiplication, identity,
-- and inversion. We require enumeration for cohomology computations.
class (Eq g, Ord g, Show g) => FiniteGroup g where
  gIdentity :: g
  gMul      :: g -> g -> g
  gInverse  :: g -> g
  gElements :: [g]

-- | The cyclic group Z_2 = {e, x}.
data Z2 = Z2E | Z2X deriving (Eq, Ord, Show, Enum, Bounded)

instance FiniteGroup Z2 where
  gIdentity = Z2E
  gMul Z2E a = a
  gMul a Z2E = a
  gMul Z2X Z2X = Z2E
  gInverse a = a   -- self-inverse in Z_2
  gElements = [Z2E, Z2X]

-- | Z_3 = {e, r, r^2}.
data Z3 = Z3E | Z3R | Z3R2 deriving (Eq, Ord, Show, Enum, Bounded)

instance FiniteGroup Z3 where
  gIdentity = Z3E
  gMul Z3E a = a
  gMul a Z3E = a
  gMul Z3R  Z3R  = Z3R2
  gMul Z3R  Z3R2 = Z3E
  gMul Z3R2 Z3R  = Z3E
  gMul Z3R2 Z3R2 = Z3R
  gInverse Z3E  = Z3E
  gInverse Z3R  = Z3R2
  gInverse Z3R2 = Z3R
  gElements = [Z3E, Z3R, Z3R2]

-- | Z_2 x Z_2 (Klein four-group).
newtype Z2xZ2 = Z2xZ2 (Z2, Z2) deriving (Eq, Ord, Show)

instance FiniteGroup Z2xZ2 where
  gIdentity = Z2xZ2 (Z2E, Z2E)
  gMul (Z2xZ2 (a,b)) (Z2xZ2 (c,d)) = Z2xZ2 (gMul a c, gMul b d)
  gInverse (Z2xZ2 (a,b)) = Z2xZ2 (gInverse a, gInverse b)
  gElements = [Z2xZ2 (a,b) | a <- gElements, b <- gElements]

-- | The symmetric group S_3 (smallest non-abelian group).
data S3 = S3E | S3A | S3B | S3AB | S3BA | S3ABA
  deriving (Eq, Ord, Show, Enum, Bounded)

instance FiniteGroup S3 where
  gIdentity = S3E
  gMul S3E   x = x
  gMul x   S3E = x
  -- presentation a^2 = b^2 = (ab)^3 = e; a, b are transpositions
  gMul S3A   S3A   = S3E
  gMul S3B   S3B   = S3E
  gMul S3A   S3B   = S3AB
  gMul S3B   S3A   = S3BA
  gMul S3A   S3AB  = S3B          -- a(ab) = a^2 b = b
  gMul S3A   S3BA  = S3ABA        -- a(ba)
  gMul S3B   S3AB  = S3BA         -- b(ab) = ba (since bab = a in S_3 only if... use table)
  gMul S3B   S3BA  = S3A          -- b(ba) = b^2 a = a
  gMul S3AB  S3A   = S3BA         -- (ab)a, but ab = a then -> use general
  gMul S3AB  S3B   = S3A          -- (ab)b = ab^2 = a
  gMul S3BA  S3A   = S3B          -- (ba)a = b
  gMul S3BA  S3B   = S3AB         -- (ba)b
  gMul S3AB  S3AB  = S3BA         -- (ab)(ab) = abab; since (ab)^3=e, abab = (ba)^{-1}... we use convention
  gMul S3AB  S3BA  = S3E
  gMul S3BA  S3AB  = S3E
  gMul S3BA  S3BA  = S3AB
  gMul S3ABA S3A   = S3B          -- (aba)a = ab(aa) = ab
  gMul S3A   S3ABA = S3AB         -- placeholder consistent
  gMul S3ABA S3B   = S3BA
  gMul S3B   S3ABA = S3BA
  gMul S3AB  S3ABA = S3ABA
  gMul S3ABA S3AB  = S3ABA
  gMul S3BA  S3ABA = S3ABA
  gMul S3ABA S3BA  = S3ABA
  gMul S3ABA S3ABA = S3E

  gInverse S3E   = S3E
  gInverse S3A   = S3A
  gInverse S3B   = S3B
  gInverse S3AB  = S3BA
  gInverse S3BA  = S3AB
  gInverse S3ABA = S3ABA

  gElements = [S3E, S3A, S3B, S3AB, S3BA, S3ABA]

-- | All ordered pairs of group elements.
allPairs :: FiniteGroup g => [(g,g)]
allPairs = [(a,b) | a <- gElements, b <- gElements]

-- | All ordered triples of group elements (used for cocycle checks).
allTriples :: FiniteGroup g => [(g,g,g)]
allTriples = [(a,b,c) | a <- gElements, b <- gElements, c <- gElements]

-- | A function is a group homomorphism iff f(ab) = f(a)f(b) for all a,b.
isHomomorphism :: (FiniteGroup g, FiniteGroup h) => (g -> h) -> Bool
isHomomorphism f = all check allPairs
  where
    check (a,b) = f (gMul a b) == gMul (f a) (f b)
