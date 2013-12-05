{-# LANGUAGE NoImplicitPrelude #-}

module Prelude.Applicative where

import Prelude.Apply
import Prelude.Compose
import Prelude.Monoid

class Apply f => Applicative f where
  pure :: a -> f a

instance Applicative ((->) e) where
  pure a _ = a

instance (Applicative f, Applicative g) => Applicative (Compose f g) where
  pure x = Compose (pure (pure x))

instance Monoid a => Applicative ((,) a) where
  pure x = (identity, x)
