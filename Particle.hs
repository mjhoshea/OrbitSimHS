-- Data type representing a point in ecludian space
data Vector3D a  = Vector3D { xPos :: a
                         , yPos :: a
                         , zPos :: a
                         } deriving (Show)


-- particle is a tuple containing information of the poistion name and mass
data Particle a = Particle  {position :: Vector3D a 
                                 } deriving (Show)

-- Newton III


