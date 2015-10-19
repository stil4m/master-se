module Assignment4


where
import Test.QuickCheck
import LabExam

testCreateTreeHuffman :: IO ()
testCreateTreeHuffman = quickCheck (\s -> (not.null) s ==> (prop_huffman.createTree) s)
