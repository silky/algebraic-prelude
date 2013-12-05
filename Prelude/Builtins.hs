{-# LANGUAGE NoImplicitPrelude #-}

module Prelude.Builtins where

infixr 0 $
infixr 9 .

id :: a -> a
id x =  x

(.) :: (b -> c) -> (a -> b) -> a -> c
f . g =  \x -> f (g x)

const :: a -> b -> a
const x _ =  x

flip :: (a -> b -> c) -> b -> a -> c
flip f x y = f y x

($) :: (a -> b) -> a -> b
f $ x = f x

curry :: ((a, b) -> c) -> a -> b -> c
curry f x y = f (x, y)

uncurry :: (a -> b -> c) -> (a, b) -> c
uncurry f (x, y) = f x y

fst :: (a, b) -> a
fst (a,_) = a

snd ::  (a, b) -> b
snd (_,b) = b
