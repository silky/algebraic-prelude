{-# LANGUAGE NoImplicitPrelude #-}

module Prelude.Foldable where

import Prelude.Monoid

class Foldable f where
  fold    :: Monoid m => f m -> m
  foldMap :: Monoid m => (a -> m) -> f a -> m
