module TestPrep

where

data Btree a = Leaf | B a (Btree a) (Btree a) deriving (Eq,Show)

foldT :: (a -> b -> b -> b) -> b -> Btree a -> b
foldT _ z Leaf = z
foldT f z (B x t1 t2) = f x (foldT f z t1) (foldT f z t2)


mapT :: (a -> b) -> Btree a -> Btree b
mapT f = foldT (\a t1 t2 -> B (f a) t1 t2) Leaf
