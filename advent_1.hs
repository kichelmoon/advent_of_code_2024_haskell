import Data.List
test_list_one = [1,2,3,5,4,2]
test_list_two = [2, 5, 6, 2, 44, 24]

getSmallestPair :: [Integer] -> [Integer] -> Integer
getSmallestPair a b = abs (minimum a - minimum b)

removeMinimum :: [Integer] -> [Integer]
removeMinimum a = delete (minimum a) a

sortData :: [Integer] -> [Integer] -> [Integer] -> Integer

sortData a b c
    | a == []    = sum c
    | otherwise = sortData (removeMinimum a) (removeMinimum b) ((getSmallestPair a b):c)

