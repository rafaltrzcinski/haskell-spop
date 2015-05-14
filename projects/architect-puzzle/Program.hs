module Program where

import Dialogs
import Options


run = do
	putStrLn "*******************************"
	putStrLn welcomeMsg
	putStrLn "*******************************"
	putStr "\n"
	putStrLn startOptionsMenu
	startOption <- getLine
	executeStartOptions startOption
	putStrLn inProgramOptionsMenu
	programOption <- getLine
	executeProgramOptions programOption


executeStartOptions option = case option of
        "1" -> loadPuzzle
        "2" -> exitProgram
        _	-> do
            putStrLn wrongOptionMsg
            putStrLn startOptionsMenu
            option <- getLine
            executeStartOptions option


executeProgramOptions option = case option of
        "1" -> do
        	putStrLn "Not implemented yet..."
        "2" -> exitProgram
        _	-> do
            putStrLn wrongOptionMsg
            putStrLn inProgramOptionsMenu
            option <- getLine
            executeProgramOptions option
