module VTree

where
import Test.QuickCheck

-- Tree with information on the nodes
data VTree a = Node a [VTree a] deriving (Eq,Show)

-- Arbitrary Instance for Btree
instance (Eq a, Arbitrary a) => Arbitrary (VTree a) where
  arbitrary = sized genVTree

genVTree :: (Eq a, Arbitrary a) => Int -> Gen (VTree a)
genVTree n = do
  v <- elements [0,1]
  n' <- elements [0..n+v]
  children <- resize (n `div` 2) (vector n')
  x <- arbitrary
  return (Node x children)
