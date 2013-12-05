{-# LANGUAGE NoImplicitPrelude #-}

module Prelude.Apply where

import Prelude.Functor
import Prelude.Compose
import Prelude.Monoid
import Prelude.Semigroup

infixl 4 <*>

class Functor f => Apply f where
  (<*>) :: f (a -> b) -> f a -> f b


instance Apply ((->) e) where
  (<*>) f g x = f x (g x)

instance Monoid a => Apply ((,) a) where
  (u, f) <*> (v, x) = (u <> v, f x)

instance (Apply f, Apply g) => Apply (Compose f g) where
  (<*>) (Compose f) (Compose x) = Compose ((<*>) `fmap` f <*> x)
