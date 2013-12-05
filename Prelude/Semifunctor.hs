{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE FlexibleInstances #-}

module Prelude.Semifunctor where

import Prelude.Semigroupoid
import Prelude.Dual

class (Semigroupoid c, Semigroupoid d) => Semifunctor f c d where
  semimap :: c a b -> d (f a) (f b)

instance Semifunctor f c d => Semifunctor f (Dual c) (Dual d) where
  semimap (Dual f) = Dual (semimap f)
