module Data.List
  ( Identity
  , List(Cons, Empty)
  , mapL
  , identity
  )
where

class Identity i where
  identity :: i a -> i a

data List a
  = Cons a (List a)
  | Empty

instance Functor List where
  fmap = mapL

instance Applicative List where
  pure x = Cons x Empty
  _           <*> Empty = Empty
  Empty       <*> _     = Empty
  (Cons f fs) <*> xs    = concatList (fmap f xs) (fs <*> xs)

instance Identity List where
  identity = id

mapL :: (a -> b) -> List a -> List b
mapL _ Empty       = Empty
mapL f (Cons x xs) = Cons (f x) (mapL f xs)

concatList :: List a -> List a -> List a
concatList Empty       ys = ys
concatList (Cons x xs) ys = Cons x (concatList xs ys)
