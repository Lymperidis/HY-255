#include <stdio.h>
#include <stdlib.h>
/*
Lymperidis Lymperis 
csd4813
*/
void Grammar (char *array[66]){
    array[0] = "A"; /*KEFALAIA*/
    array[1] = "V";
    array[2] = "G";
    array[3] = "D";
    array[4] = "E";
    array[5] = "Z";
    array[6] = "H";
    array[7] = "8";
    array[8] = "I";
    array[9] = "K";
    array[10] = "L";
    array[11] = "M";
    array[12] = "N";
    array[13] = "KS";
    array[14] = "O";
    array[15] = "P"; //
    array[16] = "R";
    array[17] = "S";
    array[18] = "T";
    array[19] = "Y";
    array[20] = "F";
    array[21] = "X";
    array[22] = "PS";
    array[23] = "W";


    array[24] = "a";/*PEZA*/
    array[25] = "v";
    array[26] = "g";
    array[27] = "d";
    array[28] = "e";
    array[29] = "z";
    array[30] = "h";
    array[31] = "8";
    array[32] = "i";
    array[33] = "k";
    array[34] = "l";
    array[35] = "m";
    array[36] = "n";
    array[37] = "ks";
    array[38] = "o";
    array[39] = "p";
    array[40] = "r";
    array[41]=   "s";
    array[42] = "s";
    array[43] = "t";
    array[44] = "y";
    array[45] = "f";
    array[46] = "x";
    array[47] = "ps";
    array[48] = "w";  

    /*Diaforetiko*/
    array[49] = "'A"; /*TONOS*/
    array[50] = "'E";
    array[51] = "'H";
    array[52] = "'I";
    array[53] = "'O";
    array[54] = "'W";
    array[55] = "'Y";
    array[56] = "a'";
    array[57] = "e'";
    array[58] = "h'";
    array[59] = "i'";
    array[60] = "o'";
    array[61] = "y'";
    array[62] = "w'";
    array[63] = "i'''";
    array[64] = "y'''";
    array[65] = "I''''";
    array[66] = "Y''''";
}

int Translator(int c){
    /*The letters from A to Ρ */
    if(c >= 193 && c<=209){
        return c-193;
    }
    /*c-194 because of a gap in 210 */
    else if(c >= 211 && c<= 217){
        return c-194;
    }
    /*small*/
    else if(c>=225 && c<= 249){
        return c-201;
    }
    /*toned a e h i */
    else if(c>=220 && c<=223){
        return c-164;
    }
    /*toned o y w */
    else if(c>251 && c<255){
        return c-192;
    }
    else if(c == 182){
        return 49;
    }
    else if(c == 184){
        return 50;
    }
    else if(c == 185){
        return 51;
    }
    else if(c == 186){
        return 52;
    }
    else if(c == 188){
        return 53;
    }
    else if(c == 190){
        return 55;
    }
    else if( c == 191){
        return 54;
    }
    else if (c==250){
        return 63;
    }
    else if(c==251){
        return 64;
    }
    else if( c== 192){
        return 65;
    }
    else if( c == 224){
        return 66;
    }

    return -2;

}
int main(){
    char *array[67];
    Grammar(array);
    enum State {start,b,d,B,D};
    enum State state;
    state = start;
    int temp;
    int temp1=0;
    int i =0;
    /*Start of the reading a program*/
    while((temp = getchar()) != EOF){
        char *temp_string;

        
        if(Translator(temp) != -2){
            if(temp == 182){
                printf("MPIKA EDW");
            }
            temp_string = array[Translator(temp)];
        }else{ 
            temp_string = (char*)malloc(sizeof(char));
            *temp_string = temp;
            
        }

        /*FSM Implementation*/
        switch (state)
        {

            case b:
            /*m or b */
                if(temp==240 || temp == 208){
                    temp_string = "b";
                }else{
                    putchar(109);
                }
            break;
            case B:
            /*M OR B */
                if(temp==240 || temp == 208){
                    temp_string = "B";
                }else{
                    putchar(77);
                }   
                break; 
            case d:
            /*n or d*/
                if(temp==244 || temp == 212){
                    temp_string = "d";
                }else{
                    putchar(110);
                }
                break;
            case D:
            /*N OR D*/
                if(temp==244 || temp==212){
                    temp_string = "D";
                }else{
                    putchar(78);
                }
                break;
            case start:
            break;
        }
        state = start;

        if(temp == 237){
            state = d;
            continue;   
        }else if(temp == 205){
            state= D;
             continue;
        }
        else if(temp == 236){
            state= b;
            continue;
        }else if(temp == 204){
            state = B;
            continue;
        }


        while(*temp_string){
            putchar(*temp_string);
            temp_string++;
        }
    }
    return 0;


}