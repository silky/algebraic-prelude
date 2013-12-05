{-# LANGUAGE NoImplicitPrelude #-}

module Prelude.Semigroupoid where

import qualified Prelude.Builtins as Builtins

class Semigroupoid c where
  (.) :: c j k -> c i j -> c i k

instance Semigroupoid (->) where
  (.) = (Builtins..)

instance Semigroupoid (,) where
  (.) (_,b) (a,_) = (a,b)
