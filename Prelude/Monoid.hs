{-# LANGUAGE NoImplicitPrelude #-}

module Prelude.Monoid where

import Prelude.Semigroup

class Semigroup a => Monoid a where
  identity :: a

instance Monoid () where
  identity = ()

instance (Monoid a, Monoid b) => Monoid (a,b) where
  identity = (identity, identity)

instance Monoid b => Monoid (a -> b) where
  identity _ = identity
