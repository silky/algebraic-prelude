{-# LANGUAGE NoImplicitPrelude #-}

module Prelude.Bind where

import Prelude.Functor
import Prelude.Apply

import qualified Prelude.Builtins as Builtins

infixr 1 =<<
infixr 1 <=<, >=>

class Apply f => Bind f where
  (=<<) :: (a -> f b) -> f a -> f b
  join :: f (f a) -> f a

  (=<<) f x = join (fmap f x)
  join m = Builtins.id =<< m

(>>=) :: Bind f => f a -> (a -> f b) -> f b
(>>=) x f = f =<< x

(>=>) :: Bind m => (a -> m b) -> (b -> m c) -> (a -> m c)
f >=> g = \x -> f x >>= g

(<=<) :: Bind m => (b -> m c) -> (a -> m b) -> (a -> m c)
(<=<) = Builtins.flip (>=>)

instance Bind ((->) e) where
  (=<<) f g x = f (g x) x
  join f x = f x x
