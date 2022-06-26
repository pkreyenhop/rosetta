program fib;

function fib(n:Int64):Int64;
begin
    if n < 2 then fib := 1
    else fib := fib(n-1)+fib(n-2)
end;
    
    
begin
    WriteLn(fib(42))
end.