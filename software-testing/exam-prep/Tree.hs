module Tree

where
import Test.QuickCheck

-- Tree with information at the leaves
data Tree a = Leaf a | Node (Tree a) (Tree a) deriving (Eq,Show)
instance (Eq a, Arbitrary a) => Arbitrary (Tree a) where
  arbitrary = sized genTree

genTree :: (Eq a, Arbitrary a) => Int -> Gen (Tree a)
genTree 0 = do
  x <- arbitrary
  return (Leaf x)
genTree n = do
  left <- subtree
  right <- subtree
  return (Node left right)
  where
    subtree = genTree (n `div` 2)
