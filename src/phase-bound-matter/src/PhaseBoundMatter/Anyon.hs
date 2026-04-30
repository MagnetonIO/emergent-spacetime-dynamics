{- |
Module      : PhaseBoundMatter.Anyon
Description : Anyon data and modular tensor category invariants.

Encodes the algebraic data of a unitary modular tensor category at
the level needed for the phase classification: simple objects, fusion
rules, quantum dimensions, total quantum dimension D, and topological
spin theta. We treat the toric-code MTC and the doubled-Fibonacci MTC
as concrete examples.
-}
module PhaseBoundMatter.Anyon
  ( -- * Anyon types
    AnyonType
    -- * MTC data
  , MTC(..)
    -- * Operations
  , totalQuantumDimension
  , topologicalEE
    -- * Concrete MTCs
  , toricCodeMTC
  , fibonacciMTC
  , doubledFibonacciMTC
    -- * Toric-code-specific anyons
  , Vacuum, Electric, Magnetic, FermionAnyon
  , vacuum, electric, magnetic, fermionAnyon
  , fuseToric
  ) where

-- | Anyon types are identified by string labels.
type AnyonType = String

-- | Specific labels for the toric code.
type Vacuum       = AnyonType
type Electric     = AnyonType
type Magnetic     = AnyonType
type FermionAnyon = AnyonType

vacuum, electric, magnetic, fermionAnyon :: AnyonType
vacuum       = "1"
electric     = "e"
magnetic     = "m"
fermionAnyon = "eps"

-- | The data of a (small) unitary modular tensor category.
data MTC = MTC
  { mtcName         :: String
  , mtcSimples      :: [AnyonType]
  , mtcQuantumDim   :: AnyonType -> Double
  , mtcTopSpin      :: AnyonType -> Double  -- in units of 2*pi (i.e., theta = exp(2 pi i h))
  , mtcFusion       :: AnyonType -> AnyonType -> [AnyonType]
  }

-- | Total quantum dimension D = sqrt( sum d_a^2 ).
totalQuantumDimension :: MTC -> Double
totalQuantumDimension c =
  sqrt . sum $ map (\a -> let d = mtcQuantumDim c a in d*d) (mtcSimples c)

-- | Topological entanglement entropy gamma = log D.
topologicalEE :: MTC -> Double
topologicalEE c = log (totalQuantumDimension c)

-- | Fusion rules for the toric code.
fuseToric :: AnyonType -> AnyonType -> [AnyonType]
fuseToric "1" b   = [b]
fuseToric a   "1" = [a]
fuseToric "e" "e" = ["1"]
fuseToric "m" "m" = ["1"]
fuseToric "eps" "eps" = ["1"]
fuseToric "e" "m" = ["eps"]
fuseToric "m" "e" = ["eps"]
fuseToric "e" "eps" = ["m"]
fuseToric "eps" "e" = ["m"]
fuseToric "m" "eps" = ["e"]
fuseToric "eps" "m" = ["e"]
fuseToric _ _      = []  -- undefined for unknown labels

-- | The toric-code MTC = Rep(D(Z_2)).
toricCodeMTC :: MTC
toricCodeMTC = MTC
  { mtcName       = "Rep(D(Z_2))"
  , mtcSimples    = [vacuum, electric, magnetic, fermionAnyon]
  , mtcQuantumDim = const 1.0
  , mtcTopSpin    = topSpin
  , mtcFusion     = fuseToric
  }
  where
    topSpin "1"   = 0.0
    topSpin "e"   = 0.0
    topSpin "m"   = 0.0
    topSpin "eps" = 0.5  -- fermion
    topSpin _     = 0.0

-- | The Fibonacci fusion category (single chiral copy, not yet a UMTC by itself).
fibonacciMTC :: MTC
fibonacciMTC = MTC
  { mtcName       = "Fib"
  , mtcSimples    = ["1", "tau"]
  , mtcQuantumDim = qdim
  , mtcTopSpin    = topSpin
  , mtcFusion     = fuse
  }
  where
    phi  = (1 + sqrt 5) / 2
    qdim "1"   = 1.0
    qdim "tau" = phi
    qdim _     = 0.0
    topSpin "1"   = 0.0
    topSpin "tau" = 2.0 / 5.0  -- h_tau = 2/5
    topSpin _     = 0.0
    fuse "1" b      = [b]
    fuse a   "1"    = [a]
    fuse "tau" "tau" = ["1", "tau"]
    fuse _ _         = []

-- | The doubled-Fibonacci MTC: Z(Fib) = Fib (X) Fib_bar.
-- Simple objects are pairs (a, b) of Fib labels.
doubledFibonacciMTC :: MTC
doubledFibonacciMTC = MTC
  { mtcName       = "Z(Fib)"
  , mtcSimples    = simples
  , mtcQuantumDim = qdim
  , mtcTopSpin    = topSpin
  , mtcFusion     = fuse
  }
  where
    phi      = (1 + sqrt 5) / 2
    simples  = ["(1,1)", "(tau,1)", "(1,tau)", "(tau,tau)"]
    qdim "(1,1)"     = 1.0
    qdim "(tau,1)"   = phi
    qdim "(1,tau)"   = phi
    qdim "(tau,tau)" = phi*phi
    qdim _           = 0.0
    topSpin "(1,1)"     = 0.0
    topSpin "(tau,1)"   = 2.0 / 5.0
    topSpin "(1,tau)"   = -2.0 / 5.0  -- chirality reversed
    topSpin "(tau,tau)" = 0.0
    topSpin _           = 0.0
    -- Fusion: componentwise (Fib in each chirality).
    fuse a b
      | a == "(1,1)" = [b]
      | b == "(1,1)" = [a]
      | a == "(tau,tau)" && b == "(tau,tau)" =
          ["(1,1)", "(tau,1)", "(1,tau)", "(tau,tau)"]
      | otherwise = [a, b]  -- simplified
