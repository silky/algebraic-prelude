{-# LANGUAGE NoImplicitPrelude #-}

module Prelude.Bifunctor where

class Bifunctor p where
  bimap :: (a -> b) -> (c -> d) -> p a c -> p b d

instance Bifunctor (,) where
  bimap f g (a,b) = (f a, g b)

instance Bifunctor ((,,) x) where
  bimap f g (x, a, b) = (x, f a, g b)
