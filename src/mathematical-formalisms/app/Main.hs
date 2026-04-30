-- |
-- Module      : Main
-- Description : Demonstration of Law I primitives.
--
-- This executable demonstrates the categorical primitives introduced
-- in Law I: identity, composition, tensor product, symmetric braiding,
-- and the matter-information functor.

module Main where

import Categorical.Core
import Categorical.Monoidal ()  -- instances only
import Categorical.Examples
import Categorical.MatterInfo

main :: IO ()
main = do
  putStrLn "=== Law I: Mathematical Formalisms — Demonstration ==="
  putStrLn ""

  putStrLn "1. Identity in the category Fn (Hask + total functions):"
  putStrLn $ "   id 42 = " ++ show (identityDemo 42)
  putStrLn ""

  putStrLn "2. Composition: (*2) . (+1) applied to 5:"
  putStrLn $ "   ((*2) . (+1)) 5 = " ++ show (compositionDemo 5)
  putStrLn ""

  putStrLn "3. Tensor product (pair up two values):"
  putStrLn $ "   pairUp 'a' 7 = " ++ show (pairUp 'a' (7 :: Int))
  putStrLn ""

  putStrLn "4. Symmetric braiding (swap):"
  putStrLn $ "   swap (1, 'b') = " ++ show (swap ((1 :: Int), 'b'))
  putStrLn ""

  putStrLn "5. Matter-information functor M on objects:"
  let p = Phys (42 :: Int)
  putStrLn $ "   M(Phys 42) = " ++ show (Info (unPhys p))
  putStrLn ""

  putStrLn "6. M on morphisms (M (+1) applied to Info 7):"
  let lifted = matterInfoMap (Fn (\(Phys x) -> Phys (x + 1)))
  putStrLn $ "   M(+1)(Info 7) = " ++ show (runFn lifted (Info (7 :: Int)))
  putStrLn ""

  putStrLn "7. Strong-monoidal coherence (phi):"
  putStrLn $ "   phi (Info 1, Info 'x') = " ++ show (matterInfoTensor (Info (1 :: Int), Info 'x'))
  putStrLn ""

  putStrLn "All composition hooks H1-H8 are realised at the type-class level."
  putStrLn "See QuickCheck test suite for verification of category and monoidal laws."
