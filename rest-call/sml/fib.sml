open Int

fun fib n = 
  if (n < 2) then 
    n
  else
    fib(n-1)+fib(n-2)


val _= print("fib(42) = "^(Int.toString(fib(42)))^"\n")
