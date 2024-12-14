module Main (main) where
import MyLib (processInput, readCoordinatePair, parseCommandLineArguments)
import System.Environment (getArgs)
import System.IO (hFlush, stdout)

main :: IO ()
main = do
    args <- getArgs
    let config = parseCommandLineArguments args
    putStrLn "Введите первые две точки (x y):"
    hFlush stdout
    firstPoint <- readCoordinatePair
    hFlush stdout
    secondPoint <- readCoordinatePair
    processInput config [firstPoint, secondPoint]