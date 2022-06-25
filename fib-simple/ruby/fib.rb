def fib n 
  n<2 ? 1 : fib(n-1)+fib(n-2)
end

print "fib(42) = "
puts fib(42)