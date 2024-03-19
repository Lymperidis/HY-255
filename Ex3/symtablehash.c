#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>

/*
csd4813 
Lymperidis Lymperis
*/

#include "symtable.h"
#define HASH_MULTIPLIER 65599

struct bindings 
{
    char *key;
    void *data;
    struct bindings* next; 
};

struct SymTable_P{
    struct bindings *table[509];        /*allocate space for only 509 buckets*/
    unsigned int length;
};

/* Return a hash code for pcKey. */
static unsigned int SymTable_hash(const char *pcKey,unsigned int buckets)
{

		size_t ui;

		unsigned int uiHash = 0U;

		for (ui = 0U; pcKey[ui] != '\0'; ui++)
                                                                                /*hash functions for finding the array
                                                                                */
			uiHash = uiHash * HASH_MULTIPLIER + pcKey[ui];

		return uiHash%buckets;

}
/*make a new HashTable symtable*/
SymTable SymTable_new(){
    SymTable newSymTable =(struct SymTable_P*)malloc(sizeof(struct SymTable_P));
    int i;
    for( i=0;i<509;i++){
        newSymTable->table[i] = NULL;   /*initialize the table with NULL else sef fault*/
    }
    newSymTable->length = 0;            /*initiliaze the values of the symtable*/
    return newSymTable;
}
/*freeing the hole symtable*/
void SymTable_free(SymTable oSymTable){
    struct bindings *temp,*next;
    int i;
    assert(oSymTable);
    if(oSymTable == NULL){              /*if the symtable == NULL return */
        return ; 
    }
    for( i=0;i<509;i++){
        temp = oSymTable->table[i];         /*go to every position in array */
        if(temp != NULL){                   /*see if there is a head or not */
            if(temp->next != NULL){
               next = temp->next;               /*deallocate space for every node in every position */
            }
            free(temp);
            temp = next;
        }
    }
}
/*get the length of the SymTable*/
unsigned int SymTable_getLength( SymTable oSymTable){                   
    assert(oSymTable);
    return oSymTable->length;                               /*just return the length of the symtable*/
}

int SymTable_put(SymTable oSymTable,  char *pcKey,  void *pvValue){
    struct bindings *newnode;
    struct bindings *temp;
    int pos;
    assert(oSymTable);
    assert(pcKey);
    assert(pvValue);
    pos =0;
    
    if(SymTable_contains(oSymTable,pcKey) == 1 ){
        return 0;
    }
    newnode =(struct bindings*)malloc(sizeof(struct bindings));
    newnode->data = (void*)pvValue;
    newnode->key = (char *)malloc(strlen(pcKey)+1);
    strcpy(newnode->key,pcKey);
    newnode->next = NULL;

    pos = SymTable_hash(pcKey,509);
    if(oSymTable->table[pos] == NULL){
        oSymTable->table[pos] = newnode;
        oSymTable->length++;
        return 1;
    }else{
        temp = oSymTable->table[pos];
        oSymTable->length++;
        while(temp->next != NULL){
            temp = temp->next;
        }

        temp->next = newnode;
    }
    return 1;
}

int SymTable_remove( SymTable oSymTable, const char *pcKey){
    struct bindings *temp,*temp1,*prev;
    int pos;
    assert(oSymTable);
    assert(pcKey);
     pos=0;

    pos = SymTable_hash(pcKey,509);
    temp1 = oSymTable->table[pos];                          
    if(temp1==NULL){                                /*if there is NULL return */
        return 0;
    }

    if(strcmp(temp1->key,pcKey) == 0 ){
        temp = temp1->next;
        free(oSymTable->table[pos]);                        /*if the deleted node is the head*/
        oSymTable->table[pos] = temp;
        oSymTable->length--;
        return 1 ; 
    }


    while(temp1 != NULL){
        if(strcmp(temp1->key,pcKey) == 0 ){                         /*if you find the node that will be deleted break */
            break;
        }
        prev = temp1;
        temp1 = temp1->next;
    }
    if(temp1 == NULL){                                           /*if you go to the end then there is no node with the key */
       printf("There is no node with the key : %s\n",pcKey); 
    }else{
        prev->next = temp1->next;
        free(temp1);
          oSymTable->length--;                                      /*connect the prev with the next of the deleted node */
        return 1;
    }

    return 0 ;

}
int SymTable_contains( SymTable oSymTable, const char *pcKey){
    struct bindings *temp;
    int pos;
    assert(oSymTable);
    assert(pcKey);
     pos =0 ;
    pos = SymTable_hash(pcKey,509);

    temp = oSymTable->table[pos];                                   /*a temp in the head so that u can traverse */

    while(temp != NULL){
        if(strcmp(temp->key,pcKey) == 0 ){                          /*if you find return 1 */
            return 1; 
        }
        temp = temp->next;
    }
    return 0;

}

void *SymTable_get( SymTable oSymTable, const char *pcKey){
    struct bindings *temp;
    int pos;
    assert(oSymTable);
    assert(pcKey);
    pos = SymTable_hash(pcKey,509);

    temp = oSymTable->table[pos];                               /*place the temp at the head of the node*/

    while(temp != NULL){
        if(strcmp(temp->key,pcKey) == 0 ){                         /*if you find it return the data of the node */
            return temp->data; 
        }
        temp = temp->next;
    }

    return NULL;                            /*else return NULL*/
    
}

void SymTable_map( SymTable oSymTable, void (*pfApply)(const char *pcKey, void *pvValue, void *pvExtra),const void *pvExtra){
    int i;
    struct bindings* temp;
    assert(oSymTable);
    assert(pfApply);
    for(i=0;i<509;i++)
    {
        temp = oSymTable->table[i];                                 /*place the temp to look at the head */
        while(temp !=NULL)
        {
           pfApply((const char *)(temp->key),temp->data,(void*)pvExtra);        /*push the variables of every temp in the arguments of the funct */
            temp = temp ->next;
        }
    }
}