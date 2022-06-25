(define (fib n)
  (if (< n 2) n (+(fib(- n 1))(fib(- n 2)))))

(define (main)
      (display "fib(42) = ")
      (display (fib 42))
      (newline))

(main)
