#include <stdio.h>

#define N 1000

int Sum = 0;
int n = N;

int main(void)
{
	while (n > 100) {
		Sum += n;
		n--;
	}

	printf("The sum from 11 to %d is %d\n", N, Sum);

	return 0;
}
