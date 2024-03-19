CC = gcc
CFLAGS = -Wall -ansi -pedantic 

list : symtablelist.o testsymtab.o
	$(CC)  testsymtab.o symtablelist.o -o testsymtabL

hash : symtablehash.o testsymtab.o
	$(CC) testsymtab.o symtablehash.o -o testsymtabH

symtablehash.o : symtable.h symtablehash.c 
	$(CC) $(CFLAGS) -c symtablehash.c

symtablelist.o : symtable.h symtablelist.c 
	$(CC) $(CFLAGS) -c symtablelist.c

testmytab.o : symtable.h	testsymtab.c
	$(CC) $(CFLAGS) -c testsymtab.c 

clean:
	rm -rf *.o testsymtabL testsymtabH

