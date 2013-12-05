{-# LANGUAGE NoImplicitPrelude #-}

module Prelude.Algebra where

import Prelude.Mu
import Prelude.Functor
import Prelude.Builtins

---- | F-Algebras
type Algebra f a = f a -> a

-- | F-Coalgebras
type Coalgebra f a = a -> f a

cata :: Functor f => Algebra f a -> Mu f -> a
cata f = f . fmap (cata f) . out
