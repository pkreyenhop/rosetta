all:
	gnat compile fib.adb -O3
	gnat bind fib.ali
	gnatlink fib.ali --LINK=clang

clean:
	rm -f fib a.out *.o *.ali

run:
	time ./fib

