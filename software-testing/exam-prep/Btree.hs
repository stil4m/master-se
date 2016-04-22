module Btree

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
