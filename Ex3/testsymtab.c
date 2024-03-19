#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "symtable.h"


int main(){
    /*Initialiazation */
    unsigned int length;
    SymTable newsym = SymTable_new();

    if(SymTable_put(newsym,"Lymperis",(void*) 1)){
        printf("Lymperis succesfully entered\n");
    }
    SymTable_put(newsym,"Giwrgos",(void*) 2);
    SymTable_put(newsym,"Giannis",(void*) 3);
    SymTable_put(newsym,"Nikos",(void*) 4);
    SymTable_put(newsym,"Marianthi",(void*) 5);
    SymTable_put(newsym,"Manos",(void*) 6);
    if( ! SymTable_put(newsym,"Lymperis",(void*) 7)){
        printf("This is key is already in \n");
    }
    length = SymTable_getLength(newsym);
    printf("This is the length of the table %d\n",length);


    SymTable_remove(newsym,"Lymperis");
    SymTable_remove(newsym,"Giannis");
    SymTable_remove(newsym,"Kapios pou den iparxei");

    length = SymTable_getLength(newsym);
    printf("This is the length of the table %d\n",length);


    printf("This is the value with key Giwrgos %d\n", (int)SymTable_get(newsym,"Giwrgos"));
    if(SymTable_contains(newsym,"Nikos")){
        printf("There is a node with the key Nikos\n");
    }

    if(SymTable_contains(newsym,"Lymperis")){
        printf("There is a node with the key Lymperis\n");
    }else{
        printf("There is no Lymperis key\n");
    }

    
    SymTable_free(newsym);






}