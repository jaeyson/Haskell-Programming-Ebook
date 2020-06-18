sayHello :: String -> IO ()
sayHello x =
  putStrLn ("Hello, " ++ x ++ "!")

triple :: Int -> Int
triple =
  (*) 3

