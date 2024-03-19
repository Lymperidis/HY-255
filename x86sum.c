#include <stdio.h>
#include <stdlib.h>

#define N 1000

int i = N;
int S = 0;

int main(void)
{
	/* while (n > 10) { Sum += n; n--;} */
	asm("movl n, %ebx\n"
	    "L1:\n\t"
	    "addl %ebx, Sum\n\t"
	    "decl %ebx;"
	    "cmpl $10, %ebx\n\t"
	    "jle  L2\n\t"
	    "movl $L1, %eax\n\t"
	    "jmp *%eax\n"
	    "L2:");

	printf("The sum from 11 to %d is %d\n", N, S);

	return 0;
}
