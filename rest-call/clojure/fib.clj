
(defn fib[n]
  (if (< n 2) n (+ (fib(- n 2))(fib(- n 1)))))

(print "fib(42) = ")
(print (fib 42))
(newline)

