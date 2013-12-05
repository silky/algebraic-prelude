module Prelude.Groupoid where

import Prelude.Semigroupoid
import Prelude.Dual

class Semigroupoid k => Groupoid k where
  inv :: k a b -> k b a

instance Groupoid k => Groupoid (Dual k) where
  inv (Dual k) = Dual (inv k)
