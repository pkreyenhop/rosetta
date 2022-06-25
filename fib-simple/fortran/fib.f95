program fib
  integer(kind=8) :: rfib,n
  n = 42
  print *, "fib(42) = ",rfib(n)
end program fib

recursive function rfib(n) result(n2)
  integer(kind = 8), intent(in) :: n
  integer(kind = 8) :: n2

  if (n<2) then
     n2=1
  else
     n2 = rfib(n-1) + rfib(n-2)
  endif
end function rfib
