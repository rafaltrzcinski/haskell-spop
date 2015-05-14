quickSort [] = []
quickSort (x:xs) = quickSort (filter(<x) xs) ++ [x] ++ quickSort (filter(>x) xs)


volume r = a * pi * cube
    where a = 4/3
          cube = r^3

volume' r = let a = 4/3
                cube = r^3
            in a * pi * cube


sgn x = if x<0  then -1
    else if x==0 then 0
        else 1


sgn' x | x<0        = -1
       | x==0       = 0
       | otherwise  = 1


fun n = case n<0 of
    True  -> "ujemna"
    False -> "dodatnia"


-- Silnia na różne sposoby

fact1 n = if n==0 then 1
    else n*fact1(n-1)


fact2 n | n==0 = 1
        | otherwise = n*fact2(n-1)


fact3 0 = 1
fact3 n = n*fact3(n-1)

fact4 n = case n of
    0 -> 1
    _ -> n*fact4(n-1)



isB c = (c=='B') || (c=='b')


roots :: (Float, Float, Float) -> (Float, Float)
roots (a,b,c) = 
    if d<0 then error "pierwiastki urojone"
        else (r1, r2)
         where r1 = e+sqrt d/(2*a)
               r2 = e-sqrt d/(2*a)
               d  = b*b - 4*a*c
               e  = -b /(2*a)


firsts :: [(a,b)]->[a]
firsts ps = [x | (x,_) <- ps]

factors n = [x | x<-[1..n], mod n x ==0]


fun1 x (y, z) | (y x) == z = [x]
              | otherwise  = [z]


calculate f [] v = v
calculate f (x:xs) v = f x (calculate f xs v)


apply [] x = x
apply (f:fs) x = f (apply fs x)

safediv _ 0 = Nothing
safediv m n = Just (m `div` n)


fun2 w [x] = x
fun2 w (x:y:z) | w x > w y = fun2 w (x:z)
               | otherwise = fun2 w (y:z)