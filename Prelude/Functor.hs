{-# LANGUAGE NoImplicitPrelude #-}

module Prelude.Functor where

import Prelude.Compose

class Functor f where
  fmap :: (a -> b) -> f a -> f b

instance Functor ((->) e) where
  fmap f g x = f (g x)

instance Functor ((,) e) where
  fmap f (x,y) = (x, f y)

instance (Functor f, Functor g) => Functor (Compose f g) where
  fmap f (Compose x) = Compose (fmap (fmap f) x)
