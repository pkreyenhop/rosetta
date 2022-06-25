void main(){
  print('fib(42)=${fib(42)}');
}

int fib(int n){
  return (n<2)?n:fib(n-1)+fib(n-2);
}
