{-# LANGUAGE NoImplicitPrelude #-}

module Prelude.Dual where

import Prelude.Semigroupoid
import Prelude.Category

newtype Dual k a b = Dual { unDual :: k b a }

instance Semigroupoid k => Semigroupoid (Dual k) where
  Dual f . Dual g = Dual (g . f)

instance Category k => Category (Dual k) where
  id = Dual id
