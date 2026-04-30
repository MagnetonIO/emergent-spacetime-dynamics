{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}

-- |
-- Module      : Categorical.Core
-- Description : Category type class and basic instances.
--
-- This module provides the 'Category' type class used throughout
-- the Law I encoding. The class fixes the categorical signature:
-- identity 'cid' and composition 'ccomp', satisfying the standard
-- associativity and unitality laws (verified by QuickCheck in
-- the test suite).

module Categorical.Core
  ( Category(..)
  , Fn(..)
  , runFn
  , FinSetMor(..)
  , runFinSetMor
  ) where

-- | A category. We name the methods 'cid' and 'ccomp' to avoid clashing
-- with 'Prelude.id' and the @.@ operator.
class Category cat where
  cid   :: cat a a
  ccomp :: cat b c -> cat a b -> cat a c

-- | The category of Haskell types and total functions.
newtype Fn a b = Fn { unFn :: a -> b }

runFn :: Fn a b -> a -> b
runFn = unFn

instance Category Fn where
  cid           = Fn (\x -> x)
  ccomp (Fn g) (Fn f) = Fn (\x -> g (f x))

-- | A toy category of finite sets represented by their cardinalities.
-- An object is a positive integer @n@ standing for the set @{0..n-1}@.
-- A morphism @n -> m@ is a list of length @n@ whose entries are in
-- @{0..m-1}@. We carry the source and target sizes for sanity checks.
data FinSetMor a b = FinSetMor
  { fsSource :: Int
  , fsTarget :: Int
  , fsTable  :: [Int]
  } deriving (Eq, Show)

runFinSetMor :: FinSetMor a b -> Int -> Maybe Int
runFinSetMor (FinSetMor _ _ tbl) i
  | i < 0 || i >= length tbl = Nothing
  | otherwise                = Just (tbl !! i)

instance Category FinSetMor where
  cid = FinSetMor 0 0 []
  -- Note: well-typed composition uses the table sizes; the phantom
  -- parameters are only enforced statically when callers use the
  -- exposed smart constructors in 'Categorical.Examples'.
  ccomp (FinSetMor _ tg2 tbl2) (FinSetMor sc1 _ tbl1) =
    FinSetMor sc1 tg2 [tbl2 !! x | x <- tbl1]
