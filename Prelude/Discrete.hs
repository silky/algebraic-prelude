{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE GADTs #-}

module Prelude.Discrete where

import Prelude.Category
import Prelude.Semigroupoid

data Discrete a b where
  Refl :: Discrete a a

instance Semigroupoid Discrete where
  Refl . Refl = Refl

instance Category Discrete where
  id = Refl

cast :: Category k => Discrete a b -> k a b
cast Refl = id

inverse :: Discrete a b -> Discrete b a
inverse Refl = Refl
