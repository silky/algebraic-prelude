{-# LANGUAGE NoImplicitPrelude #-}

module Prelude.Tensor where

import Prelude.Semigroupoid
import Prelude.Product

infixr 3 ***

class Semigroupoid k => Tensor k where
  (***) :: k a b -> k c d -> k (Prod a c) (Prod b d)

instance Tensor (->) where
  (***) f g (Prod a b) = Prod (f a) (g b)
