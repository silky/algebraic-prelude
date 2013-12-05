{-# LANGUAGE NoImplicitPrelude #-}

module Prelude.Semigroup where

infixr 6 <>

class Semigroup a where
  (<>) :: a -> a -> a

instance Semigroup () where
  _ <> _ = ()

instance Semigroup b => Semigroup (a -> b) where
  f <> g = \a -> f a <> g a

instance (Semigroup a, Semigroup b) => Semigroup (a, b) where
  (a,b) <> (a',b') = (a <> a', b <> b')
