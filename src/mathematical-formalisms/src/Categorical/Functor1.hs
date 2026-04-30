{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE FlexibleInstances #-}

-- |
-- Module      : Categorical.Functor1
-- Description : Functor type class for functors between user-defined categories.
--
-- This module supplies a 'Functor1' type class that captures the
-- notion of a functor between two arbitrary categories (in the
-- 'Category' type class sense), together with strong-monoidal
-- variants used to encode the matter-information functor.

module Categorical.Functor1
  ( Functor1(..)
  , StrongMonoidalFunctor(..)
  ) where

import Categorical.Core
import Categorical.Monoidal

-- | A functor @f@ between categories @src@ and @tgt@. The type
-- families fix the source and target. @fmap1@ takes a morphism
-- in @src@ and produces a morphism in @tgt@ on the corresponding
-- f-objects. The standard functor laws @fmap1 cid = cid@ and
-- @fmap1 (g . f) = fmap1 g . fmap1 f@ are verified by QuickCheck
-- in the test suite.
class (Category src, Category tgt) =>
      Functor1 src tgt f | f -> src tgt where
  fmap1 :: src a b -> tgt (f a) (f b)

-- | A strong monoidal functor, additionally equipped with the
-- monoidal coherence isomorphisms @phi@ (binary) and @phi0@ (unit).
class (MonoidalCategory src, MonoidalCategory tgt,
       Functor1 src tgt f) =>
      StrongMonoidalFunctor src tgt f where
  phi  :: tgt (f a, f b) (f (a, b))
  phi0 :: tgt (Unit tgt) (f (Unit src))
