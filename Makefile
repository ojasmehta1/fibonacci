CC = gcc
CFLAGS = -o -Werror -Wextra -Wall

all:
	./masm < fib.asm > fib.obj
	./mic1 prom.dat fib.obj 0 2048

clean:
	rm fib
