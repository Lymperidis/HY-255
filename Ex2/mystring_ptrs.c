#include <stdio.h>
#include <stdlib.h>
#include <assert.h>

#include "mystring.h"

/*Lymperis Lymperidis 
        csd4813
*/


/*Checks the length of the string */
size_t ms_length(const char *pcStr)

{

   const char *pcStrEnd = pcStr;    /*a var to go to the end of the string */

   assert(pcStr != NULL);           /*check whether string is NULL*/

   while (*pcStrEnd != '\0')        /*count to the end */

	  pcStrEnd++;

   return pcStrEnd - pcStr;         /*return */

}

/*Copies one string to another */

char* ms_copy(char *destination,const char *source){
    
    char *temp ; 
    temp = destination; 
    assert(source);
    
    while(*source != '\0'){
         
        *temp =  *source;
        temp++;
        source++;
    }
    *temp ='\0';

    return destination;
}

/*Copies n characters of a string to the destination */
char *ms_ncopy(char *destination , char* source , int number){
    char *temp ;  
    int i;                                  /*we need a var to go to the end of the string*/
    temp = destination;                             /*make the destination address equal to the temp address */
    assert(source);
    int temp_length = ms_length(source);            /*the length of the source string so that if the length of the string is sorter than
                                                    the number that the user enters*/
    for( i=0;i<number;i++){

         if(temp_length<i){                          /*if the string is smaller than the number that the user enters to copy put \0 until stop */
            *temp = '\0';                            
            continue;
         }

        *temp =  *source;                              /*copy a string char by char and move forward */
        temp++;
        source++;
         
        
    }
    *temp ='\0';

    return destination;
}
char *ms_concat(char *destination,const char* source){
     char *temp ;
     temp = destination ; 

    assert(source);
   
    while(*temp != '\0'){                                   /*go to the end of the string */
        temp++;
    }

    while(*source != '\0'){                                /*Until the source ends */
        *temp = *source;                                    /*copy every char of the source to temp */
        source++;                                            /*traverse the string */
        temp++;
        
        
    }
    *temp = '\0';
    return destination;
}

char *ms_nconcat(char *destination,char *source,int number){
     char *temp ;
     temp = destination ; 
    assert(source);
   
    while(*temp != '\0'){
        temp++;                                             /*go to the end of the destination string */
    }

    while(*source != '\0' && number > 0){                   /*Do until the number or the end of the source*/
        *temp = *source;                                    /*copy every char*/
        source++;
        temp++;
        number--;                                              /*decrease the number*/
        
    }
    *temp = '\0';
    return destination;                                     /*return pointer that points to the start of the string */
}

int ms_compare(char *str1,char *str2){
    assert(str1);
    assert(str2);
    while(*str1 != '\0' && *str2 !='\0' && *str1 == *str2){       /*compare until : the strings ends or when they are uneven*/
        str1++;
        str2++;                                                    /*traverse the strings*/
    }
    return (int)(*str1 - *str2);
}

int ms_ncompare(char *str1,char *str2,int number){
    assert(str1);
    assert(str1);
     while(*str1 != '\0' && *str2 !='\0' && *str1 == *str2 && number > 0 ){ /*compare until :the strins ends or they are uneven or the number goes to 0 )*/
        str1++;
        str2++;                                                                /*traverse the strings*/
        number--;                                                                  
    }
    return (int)(*str1-*str2);
}

char* ms_search(char *haystack,char *needle){
    char *temp;
    char *returnvar;
    temp = needle;
    int length_var = ms_length(needle);
    while(*haystack != '\0'){                                               /*do until haystacks finish*/
        if (*temp == *haystack)
        {   
            if(length_var == ms_length(needle)){                            /*if the lengthvar is untouched set a pointer to that char in haystack*/
                 returnvar = haystack;
            }
            length_var--;                                                       /*number--*/
            if(length_var <= 0){                                            /*if length_var goes to 0 then return the pointer its found*/
                return returnvar;
            }
            temp++;
        }else {
            length_var = ms_length(needle);                                 /*if the needle is not equal to haystack reset the length_var and put the temp pointer back to the start of the needle*/
            temp = needle;
        }

        haystack++;
        
    }

}

