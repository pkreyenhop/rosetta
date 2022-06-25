func fib(n: Int)->Int{
  (n<2 ? n : fib(n:n-1)+fib(n:n-2))
}

print("fib(42) = \(fib(n:42))")
