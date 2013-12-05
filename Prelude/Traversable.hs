{-# LANGUAGE NoImplicitPrelude #-}

module Prelude.Traversable where

import Prelude.Applicative
import Prelude.Functor
import Prelude.Foldable

class (Functor f, Foldable f) => Traversable f where
  traverse :: Applicative g => f (g a) -> g (f a)
