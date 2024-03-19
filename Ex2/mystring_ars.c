#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include "mystring.h"
/*Lymperis Lymperidis 
csd4813
*/

/*The length of the string */
size_t ms_length(const char pcStr[]) {

  size_t uiLength = 0U;

  assert(pcStr != NULL);

  while (pcStr[uiLength] != '\0')       /*Given method*/

  uiLength++;

  return uiLength;

}

char *ms_copy(char destination[],const char source[]){
    assert(source);
    int i;
    for(i=0;i<ms_length(source);i++){   /*Go until the end of the source*/
        destination[i] = source[i];             /*copy every character to the destination*/
    }
    destination[i] = '\0';                      /*add the \0 character */

    return destination;
}

char *ms_ncopy(char destination[],char source[],int number){
    assert(source);         
    int i;
    for(i=0;i<number;i++){
        destination[i] = source[i];             /*Do as the normal copy but until the i reaches the number */
    }
    destination[i]='\0';
    return destination;
}

char *ms_concat(char destination[],const char source[]){
    int i=0;
    int j=0;
    assert(destination);
    assert(source);
    while(destination[i] != '\0'){          /*Go to the end of the string in the array */
        i++;
    }
    while(source[j] != '\0'){               /*Begin the loop until the end of the source string */
        destination[i]=source[j];
        i++;                                /*copy source to destination */
        j++;
    }
    destination[i] = '\0';                  /*add the \0 character*/
    return destination;
}

char *ms_nconcat(char destination[],char source[],int number){
    int i=0;
    int j;
    assert(destination);
    assert(source);
    while(destination[i] != '\0'){
        i++;                                /*the same but until j reaches number */
    }
    for(j=0;j<number;j++){
        destination[i]=source[j];
        i++;
    }
    destination[i]='\0';                    /*add \0 characters*/
    return destination;
}

int ms_compare(char str1[],char str2[]){
    int i=0;
    assert(str1 != NULL && str2 != NULL);
    while(str1[i] == str2[i]){                                 /*do until the are unevel */

        if(ms_length(str1) == i || ms_length(str2) == i){   /*if the length of the str1 and str2 are equal with i then return 0 bc they are equal*/
            return 0;
        }
       
        i++;                                                   /*counter ++*/
    }
    return (int)(str1[i]-str2[i]);                              /*return the str1 - str2 character but typecasted to int*/
}

int ms_ncompare(char str1[],char str2[],int number){            
    int i=0;
    assert(str1 != NULL && str2 != NULL);
    while(i<number && str1[i]==str2[i]){                        /*until the i reaches number and until they are uneven*/
          if(ms_length(str1) == i || ms_length(str2) == i){
            return 0;
        }
        i++;                                                    /*counter++*/
    }
    return (int)(str1[i]-str2[i]);                              /*typecast to int the char of the arrays*/
}

char *ms_search(char haystack[],char needle[]){
    assert(haystack != NULL && needle != needle);
    int length_var = ms_length(needle);
    int i=0;
    int j=0;
    char *temp;
    while(haystack[i] != '\0'){                                     /*do until the end of the string */

        if(haystack[i] == needle[j]){                               /*if the are equal dp   |
                                                                                            V  */

            if(length_var == ms_length(needle)){                    /*if the length hasnt changes then put a char* to the address of the position of the array*/
                temp = &haystack[i];
            }
            length_var--;                                           /*decrease the length*/
            if(length_var <= 0){                                    /*if length goes 0 then return the temp pointer back*/
                return temp;
            }
            j++;
        }else{
            length_var = ms_length(needle);                         /*if they are not equal : reset the length and the counter that traverse the needle*/
            j=0;
        }
        i++;                                                        /*counter++ */
    }
    return NULL;                                                     /*return NULL*/
}