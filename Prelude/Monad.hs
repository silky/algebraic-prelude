{-# LANGUAGE NoImplicitPrelude #-}

module Prelude.Monad where

import Prelude.Applicative
import Prelude.Bind

import qualified Prelude.Builtins as Builtins

class (Applicative f, Bind f) => Monad f where

instance Monad ((->) e) where
  -- f >>= g = \x -> g (f x) x

join :: Monad m => m (m a) -> m a
join a = a >>= Builtins.id

return :: Monad m => a -> m a
return = pure
