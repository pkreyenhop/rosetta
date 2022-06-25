all:
	sbcl --load fib.lisp --eval "(sb-ext:save-lisp-and-die \"fib\" :toplevel #'main :executable t)"

clean:
	rm -f fib a.out

run:
	time ./fib

