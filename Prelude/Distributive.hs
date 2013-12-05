{-# LANGUAGE NoImplicitPrelude #-}

module Prelude.Distributive where

import Prelude.Functor
import Prelude.Builtins (id, (.))

class Functor g => Distributive g where
  distribute  :: Functor f => f (g a) -> g (f a)
  distribute  = collect id

  collect :: Functor f => (a -> g b) -> f a -> g (f b)
  collect f = distribute . fmap f
