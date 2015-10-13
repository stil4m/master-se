module TestPrep

where
import Test.QuickCheck

-- Tree with information on the nodes
data Btree a = Leaf | B a (Btree a) (Btree a) deriving (Eq,Show)

-- Arbitrary Instance for Btree
instance (Eq a, Arbitrary a) => Arbitrary (Btree a) where
  arbitrary = sized genBtree

genBtree :: (Eq a, Arbitrary a) => Int -> Gen (Btree a)
genBtree 0 = return Leaf
genBtree n = do
  x <- arbitrary
  left <- subtree
  right <- subtree
  return (B x left right)
  where
    subtree = genBtree (n `div` 2)

-- Tree with information at the leaves
data Tree a = L a | TNode (Tree a) (Tree a) deriving (Eq,Show)
instance (Eq a, Arbitrary a) => Arbitrary (Tree a) where
  arbitrary = sized genTree

genTree :: (Eq a, Arbitrary a) => Int -> Gen (Tree a)
genTree 0 = do
  x <- arbitrary
  return (L x)
genTree n = do
  left <- subtree
  right <- subtree
  return (TNode left right)
  where
    subtree = genTree (n `div` 2)


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
