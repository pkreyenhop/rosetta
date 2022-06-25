#include <iostream>

auto fib(int n) -> int{
  return (n<2)?1:fib(n-1)+fib(n-2);
}

int main(){
  std::cout << "Fib(42) = " << fib(42) <<std::endl;
}


