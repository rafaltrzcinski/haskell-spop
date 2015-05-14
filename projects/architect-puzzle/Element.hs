module Element where

-- module storing types of elements - houses and gas tanks

data Element = House | Gas deriving Eq

instance Show Element where 
    show House = "H"
    show Gas = "G"

instance Read Element where
    readsPrec _ ('G':xs)   = [(Gas, xs)]
    readsPrec _ ('H':xs)   = [(House, xs)]