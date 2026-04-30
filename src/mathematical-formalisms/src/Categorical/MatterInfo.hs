{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE TypeFamilies #-}

-- |
-- Module      : Categorical.MatterInfo
-- Description : The matter-information functor M : Phys -> Info.
--
-- This module realises the categorical signature of Definition 3.3
-- of the paper as a Haskell type @MatterInfo@. We take both Phys
-- and Info to be the category of Haskell types and total functions,
-- and instantiate M as a "type-tagging" functor that records the
-- physical interpretation as a phantom type wrapper.

module Categorical.MatterInfo
  ( Phys(..)
  , Info(..)
  , MatterInfoF
  , matterInfoMap
  , matterInfoTensor
  , matterInfoUnit
  ) where

import Categorical.Core

-- | A physical system carrying a value of type @a@.
newtype Phys a = Phys { unPhys :: a } deriving (Eq, Show)

-- | An informational resource carrying a value of type @a@.
newtype Info a = Info { unInfo :: a } deriving (Eq, Show)

-- | A toy realisation of the matter-information functor on objects:
-- it sends a phys-tagged type to an info-tagged type with the same
-- underlying type. (In a richer encoding this would change shape;
-- here we keep the structure transparent.)
type MatterInfoF a = Info a

-- | Action on morphisms: @M(f) = Info . f . unPhys@.
matterInfoMap :: Fn (Phys a) (Phys b) -> Fn (Info a) (Info b)
matterInfoMap (Fn f) = Fn (\(Info x) -> case f (Phys x) of Phys y -> Info y)

-- | Strong monoidality: @phi : (M a, M b) -> M (a, b)@.
matterInfoTensor :: (Info a, Info b) -> Info (a, b)
matterInfoTensor (Info x, Info y) = Info (x, y)

-- | Unit coherence: @phi0 : Info () -> Info ()@. Identity here.
matterInfoUnit :: Info () -> Info ()
matterInfoUnit = id
