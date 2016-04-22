module Assignment6

where
import LabExam
import Test.QuickCheck
import Data.List
import Assignment3

data FrequencyMessage = F String String deriving (Show)

instance Arbitrary FrequencyMessage where
  arbitrary = do
    f <- listOf1 (arbitrary :: Gen Char) -- listOf1 to increase the chance of valid input
    m <- sublistOf f
    return (F f m)


data DecodeInput = D String Code deriving (Show)

instance Arbitrary DecodeInput where
  arbitrary = do
    f <- listOf1 (arbitrary :: Gen Char) -- listOf1 to increase the chance of valid input
    cs <- listOf (elements (map snd ((tree2table.buildTree.freqList) f)))
    return (D f (concat cs))

validFrequencyMessage :: FrequencyMessage -> Bool
validFrequencyMessage (F fqs mess) = length (nub fqs) >= 2 && (not.null) mess

testEncodeDecode :: IO ()
testEncodeDecode = quickCheckWith stdArgs { maxSuccess = 500 }
  (\(fm@(F fqs mess)) -> validFrequencyMessage fm ==> decode fqs (encode fqs mess) == mess)

propDecodeEncode :: String -> Code -> Bool
propDecodeEncode fqs code = encode fqs (decode fqs code) == code

testDecodeEncode :: IO ()
testDecodeEncode = quickCheckWith stdArgs { maxSuccess = 500 }
  (\(D f c) -> length (nub f) >= 2  ==> propDecodeEncode f c)

testFailureWithMissingCharInFqs :: IO ()
testFailureWithMissingCharInFqs = quickCheck (expectFailure
  (\(fm@(F fqs mess)) -> validFrequencyMessage fm ==> null (encode (filter (/=head mess) fqs) mess)))
