#include <stdio.h>
#include <stdlib.h>

/*csd4813 
Lymperidis Lymperis
*/

typedef struct SymTable_P* SymTable;
/**
 * @brief Allocate space for a new symtable and initialiaze values 
 * 
 * @return SymTable 
 */
SymTable SymTable_new();
/**
 * @brief Deallocates space from the memory and "destroys the table"
 * 
 * @param oSymTable 
 */
void SymTable_free( SymTable oSymTable);

/**
 * @brief this method return the length of how many data nodes there are 
 * 
 * @param oSymTable 
 * @return unsigned int 
 */
unsigned int SymTable_getLength( SymTable oSymTable);

/**
 * @brief Inserts a node in the Symtable, return 1 if insert succesfull or 0 if not 
 * 
 * @param oSymTable the symtable
 * @param pcKey     the key
 * @param pvValue   the value to be stored in the key
 * @return int 
 */
int SymTable_put( SymTable oSymTable,  char *pcKey,  void *pvValue);
/**
 * @brief Removes nodes from the symtable deallocates memory , return 1 if succesfull or 0 if not 
 * 
 * @param oSymTable symtable
 * @param pcKey the key 
 * @return int 
 */
int SymTable_remove( SymTable oSymTable, const char *pcKey);
/**
 * @brief searches if there is a node with this key , returns 1 if true or 0 if not 
 * 
 * @param oSymTable symtable
 * @param pcKey     key 
 * @return int 
 */
int SymTable_contains( SymTable oSymTable, const char *pcKey);
/**
 * @brief Brings the data of the key 
 * 
 * @param oSymTable symtable
 * @param pcKey key 
 * @return void* 
 */
void *SymTable_get( SymTable oSymTable, const char *pcKey);
/**
 * @brief Applies a method to all the nodes in the symtable
 * 
 * @param oSymTable symtable
 * @param pfApply   method
 * @param pvExtra   
 */
void SymTable_map(SymTable oSymTable, void (*pfApply)(const char *pcKey, void *pvValue, void *pvExtra),const void *pvExtra);
