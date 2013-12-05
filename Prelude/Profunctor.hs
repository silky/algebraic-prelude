{-# LANGUAGE NoImplicitPrelude #-}

module Prelude.Profunctor where

import Prelude.Semigroupoid
import Prelude.Builtins (id)

class Profunctor f where
  dimap :: (a' -> a) -> (b -> b') -> f a b -> f a' b'

lmap :: Profunctor f => (a' -> a) -> f a b -> f a' b
lmap = (`dimap` id)

rmap :: Profunctor f => (b -> b') -> f a b -> f a b'
rmap = (id `dimap`)

instance Profunctor (->) where
  dimap g h f = h . f . g
