{-# LANGUAGE NoImplicitPrelude #-}

module Prelude.Braided where

import Prelude.Bifunctor

class Bifunctor p => Braided p where
  braid :: p a b -> p b a
