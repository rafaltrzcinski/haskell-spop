import Data.Char

--LAB 1--

--ZAD1

middle :: [a] -> a
middle [] = error "Podano listę pustą!"
middle ps = ps !! (length(ps) `div` 2)


--ZAD2

removeDups :: Eq a => [a] -> [a]
removeDups []  = error "Podano listę pustą!"
removeDups [x] = [x]
removeDups (x:y:ys) 
	| x==y 		= removeDups (x:ys)
	| otherwise = x:removeDups (y:ys)


--ZAD3

removeDups' :: Eq a => [a] -> [a]
removeDups' [] 	   = error "Podano listę pustą!"
removeDups' [x]    = [x]
removeDups' (x:xs) = x:removeDups'((filter(/=x))xs)


--ZAD4

adjpairs :: [a] -> [(a,a)]
adjpairs [] 	  = error "Podano listę pustą!"
adjpairs [x] 	  = []
adjpairs (x:y:ys) = (x,y):(adjpairs (y:ys))


--ZAD5

string2int :: String -> Int
string2int "" = error "Podano pusty String!"
string2int x  = digitToInt x

