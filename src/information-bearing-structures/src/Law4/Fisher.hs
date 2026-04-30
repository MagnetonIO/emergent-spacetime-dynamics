-- |
-- Module      : Law4.Fisher
-- Description : Fisher information metric on parametric families
-- Copyright   : (c) MagnetonIO Research 2026
-- License     : BSD-3-Clause
--
-- We compute the Fisher information metric for parametric families of
-- probability distributions, with closed-form support for univariate and
-- multivariate Gaussian families. The Fisher metric on the Gaussian family
-- is, up to a constant scaling, the Poincar'e half-plane metric of constant
-- negative curvature -- a finite-dimensional toy example of "emergent
-- hyperbolic geometry from information".
module Law4.Fisher
  ( -- * Univariate Gaussian
    GaussianParams (..)
  , gaussianFisher
  , gaussianFisherDeterminant
  , gaussianRicciScalar
    -- * Numerical estimation
  , numericalFisher
  , centralDifference
  ) where

-- | Parameters @(mu, sigma)@ of a univariate Gaussian.
data GaussianParams = GaussianParams
  { gMean  :: Double
  , gStdev :: Double
  } deriving (Eq, Show)

-- | Closed-form Fisher metric on the univariate Gaussian family in
-- coordinates @(mu, sigma)@:
--
-- @
--   g = | 1/sigma^2     0     |
--       |    0      2/sigma^2 |
-- @
gaussianFisher :: GaussianParams -> [[Double]]
gaussianFisher (GaussianParams _ s) =
  [ [ 1 / (s*s), 0           ]
  , [ 0        , 2 / (s*s)  ]
  ]

-- | Determinant of the Gaussian Fisher metric: @2/sigma^4@.
gaussianFisherDeterminant :: GaussianParams -> Double
gaussianFisherDeterminant (GaussianParams _ s) = 2 / (s*s*s*s)

-- | Ricci scalar of the Gaussian Fisher metric.
--
-- The Gaussian family with the Fisher metric is, after the substitution
-- @y = sqrt(2)*sigma@, isometric to the upper half-plane @{ y > 0 }@ with
-- metric @(d mu^2 + d y^2)/(y^2/2)@, which has constant negative curvature
-- @-1/2@. The Ricci scalar of a 2D space of constant Gauss curvature K is
-- @R = 2K@, so we return @-1@.
gaussianRicciScalar :: GaussianParams -> Double
gaussianRicciScalar _ = -1

-- | Numerical Fisher metric for a generic 1D parametric family.
-- Given a log-likelihood function @logp :: param -> sample -> Double@ and
-- a sampler producing N samples from @p_theta@, compute
-- @g(theta) = E[(d/d theta log p)^2]@ via central differences.
numericalFisher
  :: (Double -> Double -> Double)  -- ^ logp(theta, x)
  -> Double                        -- ^ theta
  -> [Double]                      -- ^ samples x_i drawn from p_theta
  -> Double                        -- ^ step size for finite differences
  -> Double
numericalFisher logp theta samples h =
  let scores = map (\x -> centralDifference (\t -> logp t x) theta h) samples
      sumSq  = sum (map (\s -> s*s) scores)
      n      = fromIntegral (length samples)
  in if n == 0 then 0 else sumSq / n

-- | Central-difference derivative @df/dx ≈ (f(x+h) - f(x-h)) / (2h)@.
centralDifference :: (Double -> Double) -> Double -> Double -> Double
centralDifference f x h = (f (x+h) - f (x-h)) / (2*h)
