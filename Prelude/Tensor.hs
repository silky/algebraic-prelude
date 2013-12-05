{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeFamilies #-}

module Prelude.Tensor where

import Prelude.Semigroupoid
import Prelude.Product

class Semigroupoid k => Tensor k where
  (***) :: k a b -> k c d -> k (Prod a c) (Prod b d)

instance Tensor (->) where
  (***) f g (Prod a b) = Prod (f a) (g b)
