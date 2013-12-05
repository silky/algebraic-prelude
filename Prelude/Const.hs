{-# LANGUAGE NoImplicitPrelude #-}

module Prelude.Const where

newtype Const a b = Const { runConst :: a }
