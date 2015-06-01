--LAB 2--

--ZAD 1--

single :: [t] -> [[t]]
single [] = []
single (x:xs) = [[x]:(single xs)]