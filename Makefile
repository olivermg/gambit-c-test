CC = llvm-gcc
GSC = gsc
CC_OPTIONS = -cc-options "-D___LIBRARY"

main: ccall.o main.o main_.o
	$(GSC) -exe -o main ccall.o main.o main_.o

main.c: main.scm
	$(GSC) -o main.c -c main.scm

main_.c: main.c
	$(GSC) -link main.c

main.o: main.c
	$(GSC) -obj $(CC_OPTIONS) -o main.o main.c

main_.o: main_.c
	$(GSC) -obj $(CC_OPTIONS) -o main_.o main_.c

ccall.o: ccall.c
	$(CC) -Wall -o ccall.o -c ccall.c

clean:
	rm -vf main *.o main.c main_.c

