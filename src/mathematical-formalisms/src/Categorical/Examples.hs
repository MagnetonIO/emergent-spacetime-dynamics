-- |
-- Module      : Categorical.Examples
-- Description : Worked examples illustrating Law I primitives.

module Categorical.Examples
  ( -- * Trivial monoidal example
    pairUp
  , swap
    -- * Composition demos
  , identityDemo
  , compositionDemo
  ) where

import Categorical.Core
import Categorical.Monoidal

-- | Pair two values using the tensor in 'Fn'.
pairUp :: a -> b -> (a, b)
pairUp x y = unFn (tensor (Fn id :: Fn a a) (Fn id :: Fn b b)) (x, y)

-- | Swap a pair using the symmetric braiding.
swap :: (a, b) -> (b, a)
swap = unFn (braid :: Fn (a, b) (b, a))

-- | A demonstration: applying the identity morphism leaves a value unchanged.
identityDemo :: Int -> Int
identityDemo = unFn (cid :: Fn Int Int)

-- | A demonstration: composing increment and double in 'Fn'.
compositionDemo :: Int -> Int
compositionDemo = unFn (ccomp (Fn (* 2)) (Fn (+ 1)) :: Fn Int Int)
