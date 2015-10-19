module Assignment5

where
import LabExam
import Test.QuickCheck

testBuildTreeHasHuffman :: IO ()
testBuildTreeHasHuffman = quickCheck (\x -> (not.null) x ==> (prop_huffman.buildTree) x)
