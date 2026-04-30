{-# LANGUAGE DeriveGeneric #-}
{- |
Module      : PhaseBoundMatter.Phase
Description : Phase data type and the equivalence relation of phases.

Encodes the central definition of Law II: a 'Phase' is an equivalence
class of gapped local Hamiltonians under gap-preserving adiabatic
deformation. The implementation uses a finite enumeration of phase
representatives and equivalence relations expressed as predicates.
-}
module PhaseBoundMatter.Phase
  ( Phase(..)
  , phaseLabel
  , Hamiltonian(..)
  , phaseOf
  , samePhase
  , phaseInvariants
  , PhaseInvariant(..)
  ) where

-- | A 'Phase' is a phase of matter; the constructors are representatives
-- of distinct connected components of the category Ham_G discussed
-- in the paper.
--
-- Each constructor carries the algebraic data needed to identify it:
-- a Landau phase carries an order-parameter representation label;
-- a topologically-ordered phase carries the name of its modular tensor
-- category (MTC); an SPT phase carries a group-cohomology class label.
data Phase
  = TrivialPhase
  | LandauPhase  String   -- ^ representation label
  | SPTPhase     String   -- ^ group-cohomology class label
  | ToricCode             -- ^ Z_2 topological order
  | DoubledFib            -- ^ doubled-Fibonacci topological order
  deriving (Eq, Ord, Show)

-- | A short human-readable label for a phase.
phaseLabel :: Phase -> String
phaseLabel TrivialPhase     = "trivial"
phaseLabel (LandauPhase l)  = "Landau(" ++ l ++ ")"
phaseLabel (SPTPhase   c)   = "SPT(" ++ c ++ ")"
phaseLabel ToricCode        = "ToricCode (Z2 topological)"
phaseLabel DoubledFib       = "DoubledFibonacci"

-- | An abstract local Hamiltonian. The 'hamPhase' field stores the
-- phase representative (a discrete invariant). 'hamPerturbation' stores
-- the magnitude of small symmetric perturbations applied; it is used
-- by the property tests in the test suite.
data Hamiltonian = Hamiltonian
  { hamName         :: String
  , hamPhase        :: Phase
  , hamPerturbation :: Double
  } deriving (Eq, Show)

-- | The phase of a Hamiltonian. By construction this returns the
-- 'hamPhase' field; the test suite verifies that this is invariant
-- under sufficiently small symmetric perturbations.
phaseOf :: Hamiltonian -> Phase
phaseOf = hamPhase

-- | Equivalence relation: two Hamiltonians are in the same phase iff
-- their phase representatives are equal.
samePhase :: Hamiltonian -> Hamiltonian -> Bool
samePhase h1 h2 = hamPhase h1 == hamPhase h2

-- | A 'PhaseInvariant' is a numerical or algebraic invariant
-- attached to a phase.
data PhaseInvariant = PhaseInvariant
  { invariantName  :: String
  , invariantValue :: Double
  } deriving (Eq, Show)

-- | The standard set of invariants for a phase: ground-state degeneracy
-- on a torus, total quantum dimension, and topological entanglement
-- entropy gamma = log D.
phaseInvariants :: Phase -> [PhaseInvariant]
phaseInvariants TrivialPhase =
  [ PhaseInvariant "GSD on torus"          1.0
  , PhaseInvariant "total quantum dim D"   1.0
  , PhaseInvariant "topological EE gamma"  0.0
  ]
phaseInvariants (LandauPhase _) =
  [ PhaseInvariant "GSD on torus"          1.0
  , PhaseInvariant "total quantum dim D"   1.0
  , PhaseInvariant "topological EE gamma"  0.0
  ]
phaseInvariants (SPTPhase _) =
  [ PhaseInvariant "GSD on torus"          1.0
  , PhaseInvariant "total quantum dim D"   1.0
  , PhaseInvariant "topological EE gamma"  0.0
  ]
phaseInvariants ToricCode =
  [ PhaseInvariant "GSD on torus"          4.0
  , PhaseInvariant "total quantum dim D"   2.0
  , PhaseInvariant "topological EE gamma"  (log 2.0)
  ]
phaseInvariants DoubledFib =
  let phi = (1 + sqrt 5) / 2
      d2  = 1 + phi*phi -- per chiral copy
      bigD = d2          -- doubled => D = (1+phi^2) for the doubled MTC
  in [ PhaseInvariant "GSD on torus"          4.0
     , PhaseInvariant "total quantum dim D"   bigD
     , PhaseInvariant "topological EE gamma"  (log bigD)
     ]
