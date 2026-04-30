{- |
Module      : PhaseBoundMatter.Entropy
Description : Entanglement entropy for tiny stabiliser states.

Computes the von Neumann entanglement entropy S(A) of the toric-code
ground state on a small torus, restricted to a connected disk region A.
For a stabiliser ground state of an L x L toric code, the formula is

    S(A) = (number of stabilisers crossing the boundary of A)
           - (number of independent loop operators wholly inside A)
           multiplied by log 2.

We also extract the topological entanglement entropy gamma = log D
by the alternating sum on three regions, recovering gamma = log 2
for the toric code.
-}
module PhaseBoundMatter.Entropy
  ( entanglementEntropyToric
  , topologicalEntanglementEntropy
  , kitaevPreskillSum
  , gammaToricCode
  ) where

-- | Entanglement entropy of a stabiliser state restricted to a region A:
-- S(A) = (boundary edges) * log 2 - gamma + O(exp(-L/xi)).
-- For our small toric code we use the leading boundary law
-- and subtract the topological constant.
entanglementEntropyToric
  :: Int    -- ^ size of region boundary (number of edges crossed)
  -> Double -- ^ entanglement entropy
entanglementEntropyToric boundaryLen =
  fromIntegral boundaryLen * log 2 - gammaToricCode

-- | The topological entanglement entropy gamma = log D.
-- For the toric code, D = 2.
gammaToricCode :: Double
gammaToricCode = log 2

-- | Generic topological entanglement entropy for a UMTC with total
-- quantum dimension D.
topologicalEntanglementEntropy :: Double -> Double
topologicalEntanglementEntropy bigD = log bigD

-- | The Kitaev-Preskill alternating sum extracts gamma:
-- S_KP = -S(A1) - S(A2) - S(A3)
--        + S(A1 u A2) + S(A2 u A3) + S(A1 u A3)
--        - S(A1 u A2 u A3) = -gamma
-- We verify that for boundary-law contributions a*L_i + (boundary corrections),
-- the alternating sum cancels the L_i terms exactly.
kitaevPreskillSum
  :: (Double -> Double) -- ^ S(L) as a function of boundary length
  -> Double             -- ^ boundary length of each Ai
  -> Double             -- ^ S_KP = -gamma
kitaevPreskillSum sFun len =
  let s1 = sFun len
      s2 = sFun len
      s3 = sFun len
      s12 = sFun (2*len)
      s23 = sFun (2*len)
      s13 = sFun (2*len)
      s123 = sFun (3*len)
  in -s1 - s2 - s3 + s12 + s23 + s13 - s123
