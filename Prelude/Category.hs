{-# LANGUAGE NoImplicitPrelude #-}

module Prelude.Category where

import Prelude.Semigroupoid

infixr 1 >>>

class Semigroupoid k => Category k where
  id :: k a a

(>>>) :: Category k => k a b -> k b c -> k a c
f >>> g = g . f
