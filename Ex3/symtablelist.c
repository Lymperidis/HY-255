#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>

/*
csd4813 
Lymperidis Lymperis
*/

#include "symtable.h"

struct bindings 
{
    char *key;
    void *data;
    struct bindings* next; 
};

struct SymTable_P{
    struct bindings *head;
    unsigned int length;
};


 SymTable SymTable_new(){

    SymTable newSymTable = malloc(sizeof(SymTable*));
    newSymTable->length = 0 ;                                   /*allocate memory and initialize head and length */
    newSymTable->head = NULL;
    return newSymTable;

}
void SymTable_free(SymTable oSymTable){
    struct bindings *temp;
    struct bindings *next;
    assert(oSymTable);

    if(oSymTable)
      {
        return;
      }
    temp = oSymTable->head;
    next= oSymTable->head;                     /*have two pointers so when the temp is free connect the remaining*/

    while(temp != NULL){
        next = temp->next;
        free(temp->key);
        free(temp);                                             /*free the temp */
        temp = next;                                            /*then put the .next of prev to the temp*/
    }
}

unsigned int SymTable_getLength( SymTable oSymTable){
    assert(oSymTable);
    return oSymTable->length;
}
int SymTable_put(SymTable oSymTable,  char *pcKey,  void *pvValue){
    struct bindings *newnode;
    struct bindings *temp;
    assert(oSymTable);
    assert(pcKey);
    assert(pvValue);
    newnode =(struct bindings*) malloc(sizeof(struct bindings));   /*allocate memory for the new node */
    
    if(SymTable_contains(oSymTable,pcKey) == 1){                       /*if there is already a node return 0 */
        return 0;
    }
    temp = oSymTable->head;                         /*make the temp to look at the symtable head*/
    newnode->key = (char*)malloc(strlen(pcKey));    /*allocate space for the newnode.key*/
    
    strcpy(newnode->key,pcKey);                 /*copy key and data */
    newnode->data = (void*)pvValue;
    
    newnode->next = NULL;                       /*make next pointer NULL*/
    
    if(temp == NULL){                           /*if the head is null then make the newnode head*/
        oSymTable->head = newnode;
        oSymTable->length++;
        return 1; 
    }
    while(temp->next != NULL){                  /*go to the end of the list */
        temp = temp->next;
    }
    temp->next = newnode; 
    oSymTable->length++;                        /*next pointer to look at the newnode */
    return 1; 
}

int SymTable_remove(SymTable oSymTable, const char *pcKey){
    struct bindings* prev; 
    struct bindings* temp;
    assert(oSymTable);
    assert(pcKey);
    temp = oSymTable->head;            /*put the start temp to look at the head*/
     prev = oSymTable->head;
    if(temp == NULL){   
        printf("There is nothing in the list \n");
        return 0;                                       /*if the head is NULL return */
    }
    if(strcmp(temp->key,pcKey) == 0){                      /*if the deleted node is the head */
        oSymTable->head = temp->next;
        free(temp);
        oSymTable->length--;                                     /*free the head and make the head the next node*/
        return 1;
    }
    while(temp != NULL){                                /*go through the list until you find it */
        if(strcmp(temp->key,pcKey) == 0){
            break;
        }
        prev = temp;
        temp = temp->next;

    }
    if(temp == NULL){                                           /*if you go to the end then there is no node with the key */
       printf("There is no node with the key : %s\n",pcKey); 
    }
    else if (strcmp(temp->key,pcKey) == 0){                   /*if you do free the memory and connect the rest of the nodes*/
        prev->next = temp->next;
        free(temp);
        oSymTable->length--;
        return 1;  
    }
   
   return 0;


}
int SymTable_contains( SymTable oSymTable, const char *pcKey){
    struct bindings *temp; 
    assert(oSymTable);
    assert(pcKey);
    temp = oSymTable->head;
    while(temp != NULL){                                            /*Find the node with the same key word */
        if(strcmp(temp->key,pcKey)==0){
            return 1;                                               /*return the 1 of there is one */
        }
        temp=temp->next;
    }
    return 0;                                                       /*return 0 if there is nothing to find */
}
void *SymTable_get( SymTable oSymTable, const char *pcKey){
    struct bindings *temp;
    assert(oSymTable);
    assert(pcKey);
    temp = oSymTable->head;                           /*if the key is the same with pckey then return the data of the temp pointer  */
    while(temp != NULL){
        if(strcmp(temp->key,pcKey)==0){
            return temp->data;
        }
        temp = temp->next;                                              /* go to the next node */
    }
    return NULL;                                                        /*if nothing retunr NULL*/
}

void SymTable_map( SymTable oSymTable, void (*pfApply)(const char *pcKey, void *pvValue, void *pvExtra),const void *pvExtra){
    struct bindings *temp;
    assert(oSymTable);
    assert(pfApply);
    temp = oSymTable->head;                            /*start by pointing to the head of the symtable*/
    while(temp != NULL){

        pfApply((const char*)(temp->key),temp->data,(void*) pvExtra);       /*put the values of each nodes as parameters of the functions */
        temp = temp->next;

    }

}