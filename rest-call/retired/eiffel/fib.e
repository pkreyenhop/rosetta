class 
   FIB 

create
    make

feature

    make
        do 
            print ("fib(42) = ") 
            print (fibr(42).out)
            print ("%N")
        end

    fibr(n: INTEGER): INTEGER
        do
            if n < 2 then
              Result := n
            else
              Result := fibr(n-1)+fibr(n-2)
            end

        end
end
