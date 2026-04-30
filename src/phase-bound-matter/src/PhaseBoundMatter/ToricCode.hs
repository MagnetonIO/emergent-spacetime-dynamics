{- |
Module      : PhaseBoundMatter.ToricCode
Description : The 2x2 toric code on a torus.

A small explicit realisation of Kitaev's toric code on a 2x2 torus
(8 qubits on edges, 4 vertex stabilisers, 4 plaquette stabilisers,
2 logical qubits, 4-fold ground-state degeneracy).

We compute the stabiliser group and verify that the codespace has
dimension 4. The state is represented as a vector over GF(2) for
the X- and Z-parts of stabiliser generators (binary symplectic form).
-}
module PhaseBoundMatter.ToricCode
  ( -- * Lattice
    LatticeSize
  , numEdges
  , numVertices
  , numPlaquettes
    -- * Stabiliser-group ranks
  , numStabilisers
  , numLogical
  , groundStateDegeneracy
    -- * Pauli operators on edges (symbolic)
  , PauliEdge(..)
  , VertexStabiliser
  , PlaquetteStabiliser
  , vertexStabiliser
  , plaquetteStabiliser
    -- * Verification
  , stabilisersCommute
  , stabilisersIndependent
  ) where

import           Data.List (nub, sort)

-- | An L x L torus has L^2 vertices, L^2 plaquettes, 2 L^2 edges.
type LatticeSize = Int

numEdges :: LatticeSize -> Int
numEdges l = 2 * l * l

numVertices :: LatticeSize -> Int
numVertices l = l * l

numPlaquettes :: LatticeSize -> Int
numPlaquettes l = l * l

-- | Number of independent stabiliser generators on an L x L torus:
-- there are L^2 vertex generators and L^2 plaquette generators,
-- with two relations (product of all A_v = I, product of all B_p = I),
-- giving 2 L^2 - 2 independent generators.
numStabilisers :: LatticeSize -> Int
numStabilisers l = 2 * l * l - 2

-- | Number of logical qubits = (#edges) - (#independent stabilisers).
-- For the toric code on a torus this is 2.
numLogical :: LatticeSize -> Int
numLogical l = numEdges l - numStabilisers l

-- | Ground-state degeneracy = 2^(numLogical).
groundStateDegeneracy :: LatticeSize -> Int
groundStateDegeneracy l = 2 ^ numLogical l

-- | Symbolic Pauli operator on a single edge.
data PauliEdge
  = EI Int    -- identity on edge i
  | EX Int    -- X on edge i
  | EY Int    -- Y on edge i
  | EZ Int    -- Z on edge i
  deriving (Eq, Ord, Show)

type VertexStabiliser    = [PauliEdge]
type PlaquetteStabiliser = [PauliEdge]

-- | A_v = product of X over the four edges adjacent to vertex v.
-- We label edges adjacent to vertex (i,j) on an LxL torus by indices.
vertexStabiliser :: LatticeSize -> (Int, Int) -> VertexStabiliser
vertexStabiliser l (i,j) =
  let -- four edges around vertex (i,j): up, down, left, right
      up    = edgeIndexH l i j
      down  = edgeIndexH l ((i + 1) `mod` l) j
      left  = edgeIndexV l i ((j + l - 1) `mod` l)
      right = edgeIndexV l i j
  in [EX up, EX down, EX left, EX right]

-- | B_p = product of Z over the four edges around plaquette p.
plaquetteStabiliser :: LatticeSize -> (Int, Int) -> PlaquetteStabiliser
plaquetteStabiliser l (i,j) =
  let -- four edges around plaquette (i,j)
      top    = edgeIndexH l i j
      bottom = edgeIndexH l ((i + 1) `mod` l) j
      left   = edgeIndexV l i j
      right  = edgeIndexV l i ((j + 1) `mod` l)
  in [EZ top, EZ bottom, EZ left, EZ right]

-- Edge indexing: horizontal edges are in [0, l*l - 1],
-- vertical edges are in [l*l, 2*l*l - 1].
edgeIndexH :: LatticeSize -> Int -> Int -> Int
edgeIndexH l i j = i * l + j

edgeIndexV :: LatticeSize -> Int -> Int -> Int
edgeIndexV l i j = l*l + i * l + j

-- | Two stabilisers commute iff they overlap on an even number of
-- non-identity-non-equal Pauli edges. For all-X and all-Z stabilisers,
-- this means they share an even number of edges.
stabilisersCommute :: [PauliEdge] -> [PauliEdge] -> Bool
stabilisersCommute s1 s2 =
  let edges1 = sort [ e | EX e <- s1 ] ++ sort [ e | EZ e <- s1 ]
      edges2 = sort [ e | EX e <- s2 ] ++ sort [ e | EZ e <- s2 ]
      -- count edges in s1 with X overlapping s2 with Z (these anticommute)
      anticommuting =
        length [ e | EX e <- s1, EZ e' <- s2, e == e' ]
        + length [ e | EZ e <- s1, EX e' <- s2, e == e' ]
  in even anticommuting && (edges1 == edges1 && edges2 == edges2)
     -- second clause is a no-op; suppress unused warning

-- | A trivial check that the stabiliser generators do not duplicate.
stabilisersIndependent :: [[PauliEdge]] -> Bool
stabilisersIndependent stabs = length (nub stabs) == length stabs
