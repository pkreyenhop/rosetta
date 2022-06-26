@main def main(args: String*) =
    val n = args(0)
    printf("fib(%s) = ",n)
    println(fib(n.toInt))
    
def fib(n:Long) : Long=
  if n < 2 then
    n
  else
    fib(n-1)+fib(n-2)

