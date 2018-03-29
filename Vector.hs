-- Data type representing a point in ecludian space
data Vector3D a  = Vector3D { xPos :: a
                         , yPos :: a
                         , zPos :: a
                         } deriving (Show)


-- Cute function for printing out the position... pointless I know :/
tellPos :: Vector3D Int  -> String
tellPos (Vector3D {xPos = x, yPos = y, zPos = z} ) = "The position is" ++ "(" ++ show x ++ show  y ++ show  z ++ ")"

-- vector addition
vectorAdd :: (Num t) =>  Vector3D t -> Vector3D t -> Vector3D t
(Vector3D a b c) `vectorAdd` (Vector3D i j k) = Vector3D (a+i) (b+j) (c+k)


-- vector subtraction
vectorSub ::(Num t) => Vector3D t -> Vector3D t -> Vector3D t
(Vector3D a b c) `vectorSub` (Vector3D i j k) = Vector3D (a-i) (b-j) (c-k)

--scalar multiple
scalarMultiply :: (Num t) => t -> Vector3D t -> Vector3D t
scalarMultiply a  (Vector3D i j k) = Vector3D (i*a) (j*a) (k*a)

--scalar divide
scalarDivide :: (Fractional t) => t -> Vector3D t -> Vector3D t
scalarDivide a  (Vector3D i j k) = Vector3D (i/a) (j/a) (k/a)

--negate
vectorNeg :: (Num t) => Vector3D t -> Vector3D t
vectorNeg (Vector3D a b c) = Vector3D (-1*a) (-1*b) (-1*c)

-- dot product
vectorDot ::(Num t) => Vector3D t -> Vector3D t -> t
(Vector3D a b c) `vectorDot` (Vector3D i j k) = (a*i) + (b*j) + (c*k)

--cross product
vectorCross :: (Num t) => Vector3D t -> Vector3D t -> Vector3D t
(Vector3D a b c) `vectorCross` (Vector3D i j k) = Vector3D (b*k -c*j) (c*i - a*k ) (a*j -b*i)

--magnitudeSquared
vectorMag :: (Num t) => Vector3D t -> Vector3D t
vectorMag (Vector3D a b c) =  Vector3D (a*a) (b*b) (c*c) 

--unit vector

--normal vector
