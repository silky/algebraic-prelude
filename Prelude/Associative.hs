{-# LANGUAGE NoImplicitPrelude #-}

module Prelude.Associative where

import Prelude.Bifunctor

class Bifunctor p => Associative p where
  associate :: p (p a b) c -> p a (p b c)
  coassociate :: p a (p b c) -> p (p a b) c

instance Associative (,) where
  associate ((a,b),c) = (a,(b,c))
  coassociate (a,(b,c)) = ((a,b),c)
