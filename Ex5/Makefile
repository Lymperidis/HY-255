all: data3 data6

data3: createdata3.o
	gcc -Wall -ansi -pedantic createdata3.o -o d3

data6: createdata6.o
	gcc -Wall -ansi -pedantic createdata6.o -o d6

createdata3.o: createdata3.c
	gcc -c -Wall -ansi -pedantic createdata3.c

createdata6.o: createdata6.c
	gcc -c -Wall -ansi -pedantic createdata6.c

clean:
	rm -f *.o data3 data6 d3 d6
