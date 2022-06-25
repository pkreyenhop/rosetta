fn main() {
   print!("fib(42) = {}\n", fib(42)) 
}

fn fib(n: i64) ->i64{
    if n<2 {n} else {fib(n-1)+fib(n-2)}
}
