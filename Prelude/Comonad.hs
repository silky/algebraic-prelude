{-# LANGUAGE NoImplicitPrelude #-}

module Prelude.Comonad where

import Prelude.Extend
import Prelude.Monoid

class Extend f => Comonad f where
  extract :: f a -> a

instance Monoid e => Comonad ((->) e) where
  extract f = f identity
