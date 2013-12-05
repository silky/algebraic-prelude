module Prelude.Mu where

{-newtype Mu f = InF { outF :: f (Mu f) }-}

newtype Mu f = Mu (f (Mu f))

out :: Mu t -> t (Mu t)
out (Mu x) = x
