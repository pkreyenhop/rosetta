(defun fib (n)
  (if (< n 2) n (+(fib(- n 1))(fib(- n 2)))))

(defun main()
    (progn
      (princ "fib(42) = ")
      (princ (fib 42))
      (terpri)))



