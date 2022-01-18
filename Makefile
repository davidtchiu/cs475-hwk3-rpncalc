all: main.c stack.o polish.o
	gcc -Wall -o rpncalc main.c polish.o stack.o

polish.o: polish.h polish.c
	gcc -Wall -c polish.c

stack.o: stack.h stack.c
	gcc -Wall -c stack.c

clean:
	rm -f rpncalc *.o
