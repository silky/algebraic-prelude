module Prelude.Contravariant where

class Contravariant f where
  contramap :: (a -> b) -> f b -> f a
