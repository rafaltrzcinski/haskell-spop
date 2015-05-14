data PointType = Point Float Float

xPoint (Point x _) = x
yPoint (Point _ y) = y


data Shape = Rectangle PointType PointType |
             Circle PointType Float        |
             Triangle PointType PointType PointType

r = Rectangle (Point 2 4)   (Point 8.5 2)
c = Circle    (Point 1 1.5) 5.5
t = Triangle  (Point 0 0)   (Point 4.5 6) (Point 9 0)


area :: Shape -> Float

area (Rectangle p1 p2) = abs (xPoint p1 - xPoint p2) *
                         abs (yPoint p1 - yPoint p2)


data Day = Mon | Tue | Wed

nameOfDay n = case n of
    Mon -> "Poniedzialek"
    otherwise -> "inny niz Poniedzialek"


-- typy parametryzowane

data PairType a = Pair a a

p = Pair 2 5

fstPair (Pair x _) = x

-- :t fstPait :: (PairType t) -> t

data PairType2 a b = Pairs a b

p1 = Pairs 1 'a'

sndPair (Pairs _ y) = y


-- typy rekurencyjne

--Liczba naturalna to zero lub jej następnik
data Nat = Zero | Succ Nat

n = Zero
n1 = Succ Zero
n2 = Succ (Succ Zero)

add m Zero = m
add m (Succ n) = Succ (add m n)

nat2int :: Nat -> Int
nat2int Zero = 0
nat2int (Succ n) = 1 + nat2int n

-- Lista jest pusta albo składa się z głowy i listy

{-data List a = Empty | Cons a (List a)

l = Cons 12 (Cons 8 (Cons 10 Empty))

len Empty = 0
len (Cons _ xs) = 1 + len xs
-}

--Drzewo binarne jest puste albo składa się z wartości
-- i dwóch poddrzew

data Tree a = Empty | Node a (Tree a) (Tree a)

tr = Node 5 (Node 3 (Node 8 Empty Empty)
                   (Node 1 Empty Empty))
           (Node 4 Empty 
                   (Node 6 Empty Empty))

depth Empty = 0
depth (Node _ l r) = 1 + max (depth l) (depth r)

--Przechodzenie drzewa

preorder Empty = []
preorder (Node x l r) = [x] ++ preorder l ++ preorder r

inorder Empty = []
inorder (Node x l r) = inorder l ++ [x] ++ inorder r

postorder Empty = []
postorder (Node x l r) = postorder l ++ postorder r ++ [x]


--Definicja drzewa o dowolnej liczbie poddrzew

data Tree a = Empty | Node a [Tree a]

--Funkcja do obliczania głębokości takiego drzewa

maxDepth Empty = 0
maxDepth (Node x ts) = 1 + max (map maxDepth ts) 