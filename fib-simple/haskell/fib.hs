fib 0 = 1
fib 1 = 1
fib n = fib(n-1)+fib(n-2)

main = do putStr "fib(42) = "
          print(fib 42)
