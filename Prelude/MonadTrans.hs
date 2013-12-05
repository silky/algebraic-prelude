{-# LANGUAGE NoImplicitPrelude #-}

module Prelude.MonadTrans where
import Prelude.Monad

class MonadTrans t where
  liftM :: Monad m => m a -> t m a
