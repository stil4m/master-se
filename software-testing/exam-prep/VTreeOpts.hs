module VTreeOpts


where

import VTree


-- No zero case in a vtree. Because of the list.
foldT :: (a -> [b] -> b) -> VTree a -> b
foldT f (Node x ys) = f x (map (foldT f) ys)

mapT :: (a -> b) -> VTree a -> VTree b
mapT f = foldT (\x ys -> Node (f x) ys)

mapT' :: (a -> b) -> VTree a -> VTree b
mapT' f (Node x ys) = Node (f x) (map (mapT f) ys)
