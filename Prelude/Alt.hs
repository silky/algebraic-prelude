{-# LANGUAGE NoImplicitPrelude #-}

module Prelude.Alt where

import Prelude.Applicative

class Applicative f => Alternative f where
  empty :: f a
  (<|>) :: f a -> f a -> f a
