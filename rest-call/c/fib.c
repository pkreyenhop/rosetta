#include <stdio.h>

long fib(int n){
  return (n<2)?n:fib(n-1)+fib(n-2);
}

int main(){
  printf("fib(42) = %ld\n", (fib(42)));
}
