module Board where

import Element
import Data.List

-- module that stores all necesary functions for game board logic

data Square = EmptySquare | Square (Maybe Element)

instance Show Square where
    show EmptySquare                = "_"
    show (Square Nothing )          = "X"
    show (Square (Just element))    = show element

type Board = [[Square]]

printRow :: [Square] -> IO ()
printRow row = do putStrLn (foldl (++) [] (map show row))

printBoard :: Board -> IO ()
printBoard []     = error "Trying to print empty board (0 x 0)"
printBoard [x]    = do printRow x
                       putStrLn "\n"
printBoard (x:xs) = do printRow x
                       printBoard xs
