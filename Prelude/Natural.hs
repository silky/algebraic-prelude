{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE RankNTypes #-}

module Prelude.Natural where

type Nat f g = forall a. f a -> g a
type DiNat f g = forall a. f a a -> g a a
type BiNat f g = forall a b. f a b -> g a b

class NFunctor t where
  nmap :: Nat f g -> Nat (t f) (t g)
