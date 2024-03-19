#include <stdio.h>
#include <stdlib.h>
/*
Lymperis Lymperis 
csd4813 
*/

/*return the number of characters in a string */
size_t ms_length(const char *pcStr);

/*copies a string to another variable */
char* ms_copy(char *destination , const char *source);

/*copies n characters to another variable */
char* ms_ncopy(char *destination , char *source , int number );

/*connects 2 strings together and returns destination var */

char *ms_concat(char *destination , const char *source );

/*connects n characters to the destination string */

char *ms_nconcat(char *destination , char *source ,int number );

/*compares the two strings   1 if str1>str2  -1 if str1<str2 0 if str1==str2*/
int  ms_compare(char *str1,char *str2);

/*compares the first n chars of the strings  1 if str1>str2 -1 if str1<str2  0 if str1==str2*/
int ms_ncompare(char *str1,char *str2,int number);

/*searches a string to the haystack */
char *ms_search(char *haystack,char *needle);


