module Print1 where

main :: IO ()
main =
  putStrLn "hello world!"

print2 = do
  putStrLn "Count to four for me:"
  putStr "one, two"
  putStr ", three, and"
  putStrLn " four!"
