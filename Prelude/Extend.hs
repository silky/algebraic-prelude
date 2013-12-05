{-# LANGUAGE NoImplicitPrelude #-}

module Prelude.Extend where

import Prelude.Functor
import Prelude.Builtins (fst)

class Functor f => Extend f where
  extend :: (f a -> b) -> f a -> f b

instance Extend ((->) e) where
  extend f a _ = f a

instance Extend ((,) e) where
  extend f p = (fst p, f p)
