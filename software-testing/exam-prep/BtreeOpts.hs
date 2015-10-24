module BtreeOpts

where

import Btree


-- Fold T operation to traverse all nodes and apply a function on a node with the result of the children
foldT :: (a -> b -> b -> b) -> b -> Btree a -> b
foldT _ z Leaf = z
foldT f z (B x t1 t2) = f x (foldT f z t1) (foldT f z t2)


-- Two mapT variants
mapT :: (a -> b) -> Btree a -> Btree b
mapT f = foldT (\a t1 t2 -> B (f a) t1 t2) Leaf

mapT' :: (a -> b) -> Btree a -> Btree b
mapT' _ Leaf = Leaf
mapT' f (B x t1 t2) = B (f x) (mapT' f t1) (mapT' f t2)
