let rec fib n =
  if n<2 then
    n
  else
    fib(n-1)+fib(n-2)

let _ =
  Printf.printf "fib(42) =  %i\n%!" (fib 42)


