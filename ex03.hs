--ex03 zipper'
zipper' :: [a] -> [b] -> [(a, b)] --the type of zipper'
zipper'([]) _ = []
zipper'(_) [] = []
zipper'(x:xs) (y:ys) = (x,y) : zipper' xs ys
--  type of zipper'[] 
--      zipper' [] :: [b] -> [(a, b)]
--  what does zipper' [] do?
--      it always produces an empty list regardless of what the second argument is.
--  is there a simpler way to express the same thing?
--     My idea is that zipper' [] = some function that always produces [], so we don't need the second argument.


--ex03 fac
fac :: (Eq t, Num t) => t -> t --the type of fac
fac 0 = 1
fac n = n * fac(n-1)
--  is your implementation of fac safe? if so, why?
--      No, it can't detect when the argument is negative. When that happens, it will cause an error.
--  if not, when is it not safe, and what should you do to make it safer?
--      Add a guard or pattern to handle cases where the input is negative.