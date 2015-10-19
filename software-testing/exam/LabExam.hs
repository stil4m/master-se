module LabExam where

import Data.List
import Data.Ord
import Test.QuickCheck

type Code = [Int]

data HTree  = Leaf Char Int
            | Fork HTree HTree Int
            deriving (Show)

weight :: HTree -> Int
weight (Leaf _ w)    = w
weight (Fork _ _ w)  = w

prop_huffman :: HTree -> Bool
prop_huffman (Leaf _ _) = True
prop_huffman (Fork t1 t2 w) = prop_huffman t1 && prop_huffman t2
                     && weight t1 + weight t2 == w

merge t1 t2 = Fork t1 t2 (weight t1 + weight t2)

createTree :: [(Char,Int)] -> HTree
createTree [(c,i)] = Leaf c i
createTree ((c,i):t) = merge (Leaf c i) (createTree t)

buildTree :: [(Char, Int)] -> HTree
buildTree table = let
    sortedTable = sortBy (comparing snd) table
    trees = map (\ (c,i) -> Leaf c i) sortedTable
    bld :: [HTree] -> HTree
    bld ([t])    = t
    bld (a:b:cs) = bld $
        insertBy (comparing weight) (merge a b) cs
  in bld trees

type CodeTable = [(Char,Code)]

tree2table :: HTree -> CodeTable
tree2table (Leaf c _)    = [(c, [])]
tree2table (Fork l r _)  =
  map (addBit 0) (tree2table l) ++ map (addBit 1) (tree2table r)
     where addBit b = \ (c,xs) -> (c,b:xs)

string2table :: String -> CodeTable
string2table = tree2table . buildTree . freqList

ecd :: CodeTable -> String -> Code
ecd m = concatMap f where
   f x = maybe (myundefined x) id $ lookup x m
   myundefined x = error $ "No '"++[x]++"' in the code table"

encode :: String -> String -> Code
encode fqs message = ecd (string2table fqs) message

decode :: String -> Code -> String
decode s = dcd tree
    where  tree = buildTree $ freqList s
           dcd :: HTree -> Code -> String
           dcd (Leaf c _) []        = [c]
           dcd (Leaf c _) bs        = c : dcd tree bs
           dcd (Fork l r _) (b:bs)  = dcd (if b == 0 then l else r) bs

freqList :: String -> [(Char,Int)]
freqList s = []
