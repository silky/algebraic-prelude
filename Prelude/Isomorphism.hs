{-# LANGUAGE NoImplicitPrelude #-}

module Prelude.Isomorphism where

import Prelude.Semigroupoid
import Prelude.Category
import Prelude.Groupoid

data Iso c a b = Iso { to :: c a b, from :: c b a }

instance Semigroupoid k => Semigroupoid (Iso k) where
  (Iso f g) . (Iso h i) = Iso (f . h) (i . g)

instance Semigroupoid k => Groupoid (Iso k) where
  inv (Iso f g) = Iso g f

instance Category k => Category (Iso k) where
  id = Iso id id
