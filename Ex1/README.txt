Excercise 1. Csd4813 Lymperidis Lymperis

The point of this excercise is to translate an input 
of letters. From the iso8859-7 encoding to iso8859-1.

The exercise asks you to write a program that translates the input from characters in iso8859-7 (English and Greek characters) into characters of iso8889-1. 
The program will work as a filter of the Unix shell, i.e. it will receive input from the standard input and make output to the
standard output and possibly the standard error. In particular,
your program will read text characters from the standard
input (which we assume is text written in Greek characters
iso8859-7), writes the same text, translated according to
the rules that follow in the standard output, and writes 
possible error and warning messages to the standard error. 
Typical executions of your program on a command 
line in UNIX could be: 


$ cat test.7 | translate

$ translate < test.7 > test.1

 