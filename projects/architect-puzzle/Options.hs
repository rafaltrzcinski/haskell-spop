module Options where

import Dialogs
import Board
import Element

import System.Exit
import System.IO
import Control.Exception
import Data.List.Split

--Module contains possilbe options to choose during the game

--Exit program
exitProgram = do
    putStrLn exitMsg
    exitSuccess


--Read path to the file with the puzzle
getPuzzleFilePath = do
    putStrLn enterPathMsg
    filePath <- getLine
    putStrLn " "
    return filePath


-- Load puzzle from file
loadPuzzle = do
    path <- getPuzzleFilePath
    puzzle <- readFile path
    splitPuzzle puzzle


-- Split puzzle: save every line of file in different constant
splitPuzzle puzzle = do
    let splittedPuzzle = splitOn "\n" puzzle
    let splittedLeft = splittedPuzzle !! 0
    let splittedUp = splittedPuzzle !! 1
    let splittedHouseCords = splittedPuzzle !! 2
    changeType splittedLeft splittedUp splittedHouseCords


--Pront initial board: size of initial board is length of first list:
-- For example: [1,2,3] means that board will be 3x3
initialBoard size = do 
    let initBoard = take size (repeat (Square Nothing))
    return initBoard


-- Change type of constats - from String to lists of Int
changeType left up houses = do
    let leftLine = read left :: [Int]
    let upLine = read up :: [Int]
    let housesCords = read houses :: [(Int, Int)]
    let lenLeft = length leftLine
    let lenUp = length upLine
    printBoard (initialBoard lenLeft)




--Below I try to create function to update position in board.....

{-
updateMatrixAt ::  Position -> (Square->Square) -> Board -> Board
updateMatrixAt (j,i) f board
 | (upperRows, thisRow : lowerRows ) <- splitAt i board
 , (leftCells, thisCell: rightCells) <- splitAt j thisRow
         =                  upperRows
          ++ (leftCells ++ (f thisCell): rightCells)
                          : lowerRows
 | otherwise = error "Tried to index matrix outside range"
 -}