checkReport :: [Integer] -> Bool
checkReport [a] = True
checkReport (x:xs) = if x < head xs && ((head xs) - x) < 3then checkReport xs else False

analyzeReports :: [[Integer]] -> [Bool] -> [Bool]
analyzeReports a b
           | a == [] = b
           | otherwise = analyzeReports (tail a) ((checkReport (head a)) : b)