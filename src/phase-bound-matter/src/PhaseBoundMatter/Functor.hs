{- |
Module      : PhaseBoundMatter.Functor
Description : Functorial classification of phases and Law I -> II lift.

Implements the matter-information functor M: Phys -> Info from Law I,
the phase-classification functor PhaseFunc: Cat -> Set sending a
symmetry-group category BG to its set of phase classes, and the
Drinfeld-center functor Z: FusCat -> MTC.

These functors are the precise formal expression of how Law II
composes onto Law I in the modular framework.
-}
module PhaseBoundMatter.Functor
  ( -- * Law I -> Law II compositional lift
    matterInformationFunctor
  , phaseClassificationFunctor
  , drinfeldCenter
    -- * Diagrammatic check
  , liftCommutes
  ) where

import           PhaseBoundMatter.Phase
import           PhaseBoundMatter.Anyon

-- | The matter-information functor M: Phys -> Info (Law I, L1.3).
-- We model it as a function from a physical Hamiltonian to the
-- list of its phase invariants (a finite collection of scalar data).
matterInformationFunctor :: Hamiltonian -> [PhaseInvariant]
matterInformationFunctor h = phaseInvariants (phaseOf h)

-- | The phase-classification functor: takes a Hamiltonian (with its
-- symmetry data implicit) to its phase representative.
-- Categorically, this factors through the connected-component set
-- pi_0(Ham_G).
phaseClassificationFunctor :: Hamiltonian -> Phase
phaseClassificationFunctor = phaseOf

-- | The Drinfeld-center functor Z: FusCat -> MTC. We implement only
-- the named cases relevant to the paper.
drinfeldCenter :: MTC -> MTC
drinfeldCenter mtc
  | mtcName mtc == "Fib" = doubledFibonacciMTC
  | otherwise            = mtc  -- placeholder for general case

-- | Verify a small commuting-square: the lift Law I -> Law II commutes
-- with the matter-information functor in the sense that the phase
-- invariants of a Hamiltonian whose phase is X agree with the
-- invariants computed from the MTC of X.
liftCommutes :: Hamiltonian -> MTC -> Bool
liftCommutes h mtc =
  let phaseInv  = phaseInvariants (phaseOf h)
      gammaInv  = lookup "topological EE gamma"
                    [ (invariantName i, invariantValue i) | i <- phaseInv ]
      gammaMtc  = topologicalEE mtc
  in case gammaInv of
       Just g  -> abs (g - gammaMtc) < 1e-9
       Nothing -> False
