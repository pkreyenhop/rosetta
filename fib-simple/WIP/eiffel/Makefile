all:
ifneq (, $(shell /usr/bin/which se))
		ec fib.e -c_compile -finalize
		
else
		~/liberty-eiffel/target/bin/se c fib.e
endif

run:
ifneq (, $(shell /usr/bin/which se))
	time EIFGENs/fib/F_code/fib	
else
	time ./a.out
endif


clean:
	rm -rf EIFGENs fib fib.ecf	User *.o	*.c *.h *.id a.out
