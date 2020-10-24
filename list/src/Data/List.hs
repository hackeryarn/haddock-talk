{-|
Module : Data.List
Description : A list implementation with no special syntax.
Copyright : (c) Artem Chernyak, 2020
License : GPL-3
Mainter : artemchernyak@gmail.com
Stability : experimental

This module was designed for a talk on Haddock it provides a very simple
list type with only a few instances. Do not use this in any real code.
-}
module Data.List
  ( Identity
  , List(Cons, Empty)
  , mapL
  , identity
  )
where

-- |A silly sample of a higher kinded identity.
class Identity i where
  -- |Does the only sensible thing.
  -- Returns what ever gets passed in.
  identity :: i a -> i a

-- |A list implementation with no special syntax.
data List a
  -- |Represents an item with a potentially empty list attached.
  = Cons a (List a)
  -- |Represents a list with no items.
  | Empty
  deriving ( Show  -- ^since 0.0.1.0
           , Eq -- ^default Eq instance
           )

instance Functor List where
  fmap = mapL

instance Applicative List where
  pure x = Cons x Empty
  _           <*> Empty = Empty
  Empty       <*> _     = Empty
  (Cons f fs) <*> xs    = concatList (fmap f xs) (fs <*> xs)

instance Identity List where
  identity = id

-- |Provides a way for transforming the values in a list.
mapL :: (a -> b) -> List a -> List b
mapL _ Empty       = Empty
mapL f (Cons x xs) = Cons (f x) (mapL f xs)

-- |Helper function for the construction of Applicative.
concatList :: List a -> List a -> List a
concatList Empty       ys = ys
concatList (Cons x xs) ys = Cons x (concatList xs ys)
