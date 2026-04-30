{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE TypeFamilies #-}

-- |
-- Module      : Categorical.Monoidal
-- Description : MonoidalCategory and SymmetricMonoidalCategory type classes.
--
-- This module supplies the 'MonoidalCategory' and
-- 'SymmetricMonoidalCategory' type classes used throughout Law I.
-- We work in a strict monoidal setting so that the associator and
-- unitors are implicit (justified by Mac Lane's coherence theorem,
-- Theorem 2.5 in the paper). The companion test suite verifies
-- the bifunctoriality of the tensor and the symmetry involution.

module Categorical.Monoidal
  ( MonoidalCategory(..)
  , SymmetricMonoidalCategory(..)
  , DaggerCategory(..)
  ) where

import Categorical.Core

-- | A monoidal category. The unit object is denoted by the type
-- family 'Unit', and the tensor product is the bifunctor 'tensor'.
class Category cat => MonoidalCategory cat where
  type Unit cat
  tensor :: cat a b -> cat c d -> cat (a, c) (b, d)

instance MonoidalCategory Fn where
  type Unit Fn = ()
  tensor (Fn f) (Fn g) = Fn (\(x, y) -> (f x, g y))

-- | A symmetric monoidal category. The braiding 'braid' must be its
-- own inverse: @braid . braid = id@.
class MonoidalCategory cat => SymmetricMonoidalCategory cat where
  braid :: cat (a, b) (b, a)

instance SymmetricMonoidalCategory Fn where
  braid = Fn (\(x, y) -> (y, x))

-- | A dagger category. The dagger 'dagger' is contravariant and
-- involutive: @dagger . dagger = id@. In 'Fn' we cannot in general
-- invert a function, so we provide a partial instance only for
-- isomorphisms via a wrapper; the test suite uses a finite-dim
-- example.
class Category cat => DaggerCategory cat where
  dagger :: cat a b -> cat b a
