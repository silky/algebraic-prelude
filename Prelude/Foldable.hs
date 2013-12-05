{-# LANGUAGE NoImplicitPrelude #-}

module Prelude.Foldable where

import Prelude.Monoid

class Foldable f where
  foldMap :: Monoid m => (a -> m) -> f a -> m
