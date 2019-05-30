{-
  By default Elm will figure type from type inference,
  but it also lets us write a Type Annotation on the
  line above a definition.
-}


half : Float -> Float
half n =
  n / 2

-- half 256 == 128
-- half "3" -- error!

hypotenuse : Float -> Float -> Float
hypotenuse a b =
  sqrt (a^2 + b^2)

-- hypotenuse 3 4 == 5
-- hypotenuse 5 12 == 13

{- 
  Adding type annotation is not required, but recommended!
  1. Error message quality
  2. Documentation
-}
