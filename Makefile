all: main.c stack.o polish.o
	gcc -Wall -g -o rpncalc main.c polish.o stack.o

polish.o: polish.h polish.c
	gcc -Wall -g -c polish.c

stack.o: stack.h stack.c
	gcc -Wall -g -c stack.c

clean:
	rm -f rpncalc *.o
