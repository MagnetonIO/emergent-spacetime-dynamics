-- |
-- Module      : Spec
-- Description : Property-style tests for Law I primitives.
--
-- These tests exercise the category laws (identity, associativity),
-- the symmetric monoidal laws (bifunctoriality of tensor, braid
-- involution), and functoriality of the matter-information functor.
-- Since QuickCheck is not part of the GHC bundle on this system,
-- we use a small in-house deterministic property test runner that
-- iterates each property over a representative finite sample of
-- inputs. This is morally equivalent to QuickCheck for the
-- algebraic laws verified here (which are universal identities,
-- not statistical properties).

module Main (main) where

import Categorical.Core
import Categorical.Monoidal
import Categorical.MatterInfo

import System.Exit (exitFailure, exitSuccess)
import Control.Monad (unless)

-- A small fixed sample of integers used as "arbitrary" test inputs.
sample :: [Int]
sample = [-3, -1, 0, 1, 2, 5, 7, 11, 17, 100]

-- A small library of representative endofunctions of Int used as
-- "arbitrary" Fun Int Int values.
funcs :: [Int -> Int]
funcs =
  [ id
  , (+1)
  , (* 2)
  , subtract 3
  , \x -> x * x
  , \x -> x + 5
  , negate
  , \x -> x `mod` 7
  ]

-- Run a named property over all combinations of sample inputs.
-- Returns True iff the property holds in every sampled case.
runProp :: String -> Bool -> IO Bool
runProp name ok = do
  putStr ("  " ++ name ++ " ... ")
  if ok
    then putStrLn "OK" >> return True
    else putStrLn "FAILED" >> return False

-- Property: cid is a left identity for ccomp in Fn.
propIdLeft :: Bool
propIdLeft = and
  [ runFn (ccomp cid (Fn f)) x == f x
  | f <- funcs, x <- sample ]

-- Property: cid is a right identity for ccomp in Fn.
propIdRight :: Bool
propIdRight = and
  [ runFn (ccomp (Fn f) cid) x == f x
  | f <- funcs, x <- sample ]

-- Property: composition is associative in Fn.
propAssoc :: Bool
propAssoc = and
  [ let lhs = ccomp (ccomp (Fn h) (Fn g)) (Fn f)
        rhs = ccomp (Fn h) (ccomp (Fn g) (Fn f))
    in runFn lhs x == runFn rhs x
  | f <- funcs, g <- funcs, h <- funcs, x <- sample
  ]

-- Property: tensor is a bifunctor: tensor (g1 . f1) (g2 . f2)
-- equals tensor g1 g2 . tensor f1 f2.
propTensorBifunctor :: Bool
propTensorBifunctor = and
  [ let lhs = tensor (ccomp (Fn g1) (Fn f1)) (ccomp (Fn g2) (Fn f2))
        rhs = ccomp (tensor (Fn g1) (Fn g2)) (tensor (Fn f1) (Fn f2))
    in runFn lhs (x, y) == runFn rhs (x, y)
  | f1 <- take 4 funcs, f2 <- take 4 funcs
  , g1 <- take 4 funcs, g2 <- take 4 funcs
  , x <- take 5 sample, y <- take 5 sample
  ]

-- Property: braid is an involution: braid . braid = id.
propBraidInvolution :: Bool
propBraidInvolution = and
  [ runFn (ccomp (braid :: Fn (Int, Int) (Int, Int)) braid) (x, y) == (x, y)
  | x <- sample, y <- sample
  ]

-- Property: M preserves the identity morphism.
propFunctorIdentity :: Bool
propFunctorIdentity = and
  [ let m = matterInfoMap (cid :: Fn (Phys Int) (Phys Int))
    in runFn m (Info x) == Info x
  | x <- sample
  ]

-- Property: M preserves composition.
propFunctorComposition :: Bool
propFunctorComposition = and
  [ let liftPhys h = Fn (\(Phys n) -> Phys (h n))
        mF  = matterInfoMap (liftPhys f)
        mG  = matterInfoMap (liftPhys g)
        mGF = matterInfoMap (ccomp (liftPhys g) (liftPhys f))
    in runFn mGF (Info x) == runFn (ccomp mG mF) (Info x)
  | f <- funcs, g <- funcs, x <- sample
  ]

main :: IO ()
main = do
  putStrLn "=== Law I Property Test Suite ==="
  results <- sequence
    [ runProp "category: id left           " propIdLeft
    , runProp "category: id right          " propIdRight
    , runProp "category: associativity     " propAssoc
    , runProp "monoidal: bifunctoriality   " propTensorBifunctor
    , runProp "symmetric: braid involution " propBraidInvolution
    , runProp "functor: identity           " propFunctorIdentity
    , runProp "functor: composition        " propFunctorComposition
    ]
  let total  = length results
      passed = length (filter id results)
  putStrLn $ "Passed " ++ show passed ++ " / " ++ show total
  unless (passed == total) exitFailure
  exitSuccess
